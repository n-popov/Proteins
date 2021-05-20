#ifndef PROTEINS_FOURIER_H
#define PROTEINS_FOURIER_H

#define RANGE(x) std::begin(x), std::end(x)

#include <complex>
#include <vector>
#include <numeric>

auto pi = std::acos(-1);

template <typename T>
auto transform(const std::vector<std::complex<T>>& vals, bool inverse = false) {
    auto sign = inverse ? 1 : -1;
    auto coefficient = inverse ? T(1.) / std::size(vals) : 1;
    auto n = size_t();
    std::vector<std::complex<T>> return_value;
    std::generate_n(std::back_inserter(return_value), std::size(vals), [&n, &vals, &sign, &coefficient]() {
        std::vector<std::complex<T>> harmonics;
        auto k = size_t();
        std::generate_n(std::back_inserter(harmonics), std::size(vals), [&n, &k, &vals, &sign]() {
            auto arg = 2 * pi * k++ * n / std::size(vals);
            return std::complex<T>(std::cos(arg), sign * std::sin(arg));
        });
        n += 1;
        return coefficient *
               std::inner_product(RANGE(vals), std::begin(harmonics), std::complex<T>());
    });
    return return_value;
}

#endif //PROTEINS_FOURIER_H
