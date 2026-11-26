
#include <algorithm>
#include <chrono>
#include <cmath>
#include <iomanip>
#include <iostream>
#include <random>
#include <stdexcept>
#include <string>
#include <utility>
#include <vector>

using namespace std;

using Matrix = std::vector<float>;

// Matrices are stored in row-major order.
// A: M x K
// B: K x N
// C: M x N

Matrix matmul_naive(
    const Matrix& A,
    const Matrix& B,
    int M, int K, int N
) {
    Matrix C(M * N, 0.0f);

    // TODO: Implement standard matrix multiplication.
    // Loop order: i -> j -> k
    //
    // For each C[i,j], calculate the dot product
    // of row i of A and column j of B.

    for (int r = 0; r < M; r++){
        for (int c = 0; c < N; c++){
            for (int k = 0; k < K; k++){
                C[r * N + c] += A[r * K + k] * B[k * N + c];
            }
        }
    }

    return C;
}

Matrix matmul_reordered(
    const Matrix& A,
    const Matrix& B,
    int M, int K, int N
) {
    Matrix C(M * N, 0.0f);

    // TODO: Implement cache-friendly multiplication.
    // Loop order: i -> k -> j
    //
    // Hint:
    // - Load A[i,k] once.
    // - Iterate across row k of B.
    // - Accumulate results into row i of C.

    for (int r = 0; r < M; r++){
        for (int k = 0; k < K; k++){
            float aVal = A[r * K + k];
            for (int c = 0; c < N; c++){
                C[r * N + c] += aVal * B[k * N + c];
            }
        }
    }

    return C;
}

// Matrices are stored in row-major order.
// A: M x K
// B: K x N
// C: M x N

// Keep the A tile at (i, k) fixed while visiting column tiles j.
Matrix matmul_tiled_reuse_a(
    const Matrix& A,
    const Matrix& B,
    int M, int K, int N,
    int block_size
) {
    Matrix C(M * N, 0.0f);

    // TODO: Implement tiled matrix multiplication.
    //
    // Divide the output into blocks.
    // For each block, accumulate contributions
    // from corresponding blocks of A and B.
    //
    // Use std::min() to handle matrix dimensions
    // that aren't multiples of block_size.


    for (int rS = 0; rS < M; rS += block_size){
        for (int kS = 0; kS < K; kS += block_size){
            for (int cS = 0; cS < N; cS += block_size){
                
                int rEnd = min(rS + block_size, M);
                int kEnd = min(kS + block_size, K);
                int cEnd = min(cS + block_size, N);

                for (int r = rS; r < rEnd; r++){
                    for (int k = kS; k < kEnd; k++){
                        float aVal = A[r * K + k];

                        for (int c = cS; c < cEnd; c++){
                            C[r * N + c] += aVal * B[k * N + c];
                        }
                    }
                }
            }
        }
    }

    return C;
}

// Matrices are stored in row-major order.
// A: M x K
// B: K x N
// C: M x N
// Accumulate into the output tile at (i, j) across all shared-dimension tiles k.
Matrix matmul_tiled_accumulate_output(
    const Matrix& A,
    const Matrix& B,
    int M, int K, int N,
    int block_size
) {

    Matrix C(M * N, 0.0);
    for (int rS = 0; rS < M; rS += block_size){
        for (int cS = 0; cS < N; cS += block_size){
            for (int kS = 0; kS < K; kS += block_size){

                int rEnd = min(rS + block_size, M);
                int kEnd = min(kS + block_size, K);
                int cEnd = min(cS + block_size, N);

                for (int r = rS; r < rEnd; r++){
                    for (int k = kS; k < kEnd; k++){
                        float aVal = A[r * K + k];
                        for (int c = cS; c < cEnd; c++){
                            C[r * N + c] += aVal * B[k * N + c];
                        }
                    }
                }
            }
        }
    }

    return C;
}

namespace {

template <std::size_t... RowOffsets>
Matrix matmul_multirow_fixed(
    const Matrix& A,
    const Matrix& B,
    int M, int K, int N,
    std::index_sequence<RowOffsets...>
) {
    constexpr int row_count = sizeof...(RowOffsets);
    const int full_rows = M - M % row_count;
    Matrix C(M * N, 0.0f);

    for (int r = 0; r < full_rows; r += row_count) {
        for (int k = 0; k < K; k++) {
            const float a_values[] = {A[(r + RowOffsets) * K + k]...};
            for (int c = 0; c < N; c++) {
                const float b = B[k * N + c];
                // Expand one update per output row while walking columns in order.
                ((C[(r + RowOffsets) * N + c] += a_values[RowOffsets] * b), ...);
            }
        }
    }

    for (int r = full_rows; r < M; r++) {
        for (int k = 0; k < K; k++) {
            const float a = A[r * K + k];
            for (int c = 0; c < N; c++) {
                C[r * N + c] += a * B[k * N + c];
            }
        }
    }

    return C;
}

} // namespace

Matrix matmul_multirow(
    const Matrix& A,
    const Matrix& B,
    int M, int K, int N,
    int row_count
) {
    switch (row_count) {
        case 1:
            return matmul_reordered(A, B, M, K, N);
        case 2:
            return matmul_multirow_fixed(A, B, M, K, N, std::make_index_sequence<2>{});
        case 4:
            return matmul_multirow_fixed(A, B, M, K, N, std::make_index_sequence<4>{});
        case 8:
            return matmul_multirow_fixed(A, B, M, K, N, std::make_index_sequence<8>{});
        case 16:
            return matmul_multirow_fixed(A, B, M, K, N, std::make_index_sequence<16>{});
        default:
            throw std::invalid_argument("Row count must be 1, 2, 4, 8, or 16");
    }
}

Matrix random_matrix(int rows, int cols, int seed) {
    std::mt19937 rng(seed);
    std::uniform_real_distribution<float> dist(-1.0f, 1.0f);

    Matrix A(rows * cols);

    for (float& value : A) {
        value = dist(rng);
    }

    return A;
}

float check_correctness(
    const Matrix& expected,
    const Matrix& actual
) {
    if (expected.size() != actual.size()) {
        throw std::runtime_error("Matrix size mismatch");
    }

    float max_error = 0.0f;

    for (size_t i = 0; i < expected.size(); i++) {
        max_error = std::max(
            max_error,
            std::abs(expected[i] - actual[i])
        );
    }

    if (max_error > 1e-3f) {
        throw std::runtime_error(
            "Correctness check failed. Max absolute difference: "
            + std::to_string(max_error)
        );
    }

    return max_error;
}

template <typename Func>
double benchmark(Func fn, int iterations = 5) {
    // Warm up before measuring.
    Matrix warmup = fn();

    volatile float sink = warmup[warmup.size() / 2];

    double total_ms = 0.0;

    for (int iteration = 0; iteration < iterations; iteration++) {
        auto start = std::chrono::steady_clock::now();

        Matrix result = fn();

        auto end = std::chrono::steady_clock::now();

        volatile float value = result[result.size() / 2];

        total_ms +=
            std::chrono::duration<double, std::milli>(
                end - start
            ).count();
    }

    return total_ms / iterations;
}

void print_result(
    const std::string& name,
    double milliseconds,
    int M, int K, int N
) {
    double flops = 2.0 * M * K * N;
    double gflops = flops / (milliseconds * 1e6);

    std::cout << std::left << std::setw(52) << name
              << std::right << std::setw(12)
              << std::fixed << std::setprecision(3)
              << milliseconds << " ms"
              << std::setw(12) << std::setprecision(2)
              << gflops << " GFLOP/s\n";
}

int main() {
    constexpr int matrix_sizes[] = {512, 1024};
    constexpr int block_sizes[] = {8, 16, 32, 64, 128, 256};
    constexpr int row_counts[] = {2, 4, 8, 16};

    for (int size : matrix_sizes) {
        const Matrix A = random_matrix(size, size, 42);
        const Matrix B = random_matrix(size, size, 123);

        const auto naive = [&]() {
            return matmul_naive(A, B, size, size, size);
        };
        const auto reordered = [&]() {
            return matmul_reordered(A, B, size, size, size);
        };
        const Matrix reference = naive();
        float max_error = check_correctness(reference, reordered());

        std::cout << "\nMatrix size: " << size << " x " << size << '\n';
        print_result("Naive (i-j-k)", benchmark(naive), size, size, size);
        print_result("Reordered (i-k-j)", benchmark(reordered), size, size, size);
        for (int row_count : row_counts) {
            const auto multirow = [&]() {
                return matmul_multirow(A, B, size, size, size, row_count);
            };
            max_error = std::max(max_error, check_correctness(reference, multirow()));
            print_result(
                "Multirow (" + std::to_string(row_count) + "-row B reuse)",
                benchmark(multirow), size, size, size
            );
        }

        for (int block_size : block_sizes) {
            const auto reuse_a_tile = [&]() {
                return matmul_tiled_reuse_a(
                    A, B, size, size, size, block_size
                );
            };
            const auto accumulate_output_tile = [&]() {
                return matmul_tiled_accumulate_output(
                    A, B, size, size, size, block_size
                );
            };

            max_error = std::max({
                max_error,
                check_correctness(reference, reuse_a_tile()),
                check_correctness(reference, accumulate_output_tile())
            });

            const std::string block = std::to_string(block_size);
            print_result(
                "A-tile reuse (tiles i-k-j), block " + block,
                benchmark(reuse_a_tile), size, size, size
            );
            print_result(
                "Output-tile accumulation (tiles i-j-k), block " + block,
                benchmark(accumulate_output_tile), size, size, size
            );
        }

        std::cout << "Max absolute difference vs. naive: "
                  << std::scientific << max_error << '\n';
    }

    return 0;
}
