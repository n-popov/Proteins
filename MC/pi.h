#pragma once

#include "random_generator.h"
#include <future>

//Sequential pi computation
class Pi {
public:
    explicit Pi(size_t iterations = std::numeric_limits<int>::max() / 1000);
    [[nodiscard]] long double operator()();
private:
    const size_t m_iterations;
    const size_t m_size; // side of the cube
    RandomGenerator<unsigned long long> randomGenerator;
};

// Ctor
Pi::Pi(size_t iterations) : m_iterations(iterations),
    m_size(static_cast<size_t>(std::floor(std::sqrt(std::numeric_limits<unsigned int>::max())))),
    randomGenerator(0LL, m_size){}


// Computing pi
[[nodiscard]] long double Pi::operator()() {
    auto inCircle = 0LL;
    for (auto i = 0; i < m_iterations; ++i) {
        auto x = randomGenerator();
        auto y = randomGenerator();
        if (x * x + y * y <= m_size * m_size) {
            ++inCircle;
        }
    }
    return static_cast<long double>(inCircle) / (m_iterations) * 4;
}

class PiParallel {
public:
    PiParallel(long long iterations = std::numeric_limits<int>::max() / 1000);
    [[nodiscard]] long double operator()() const;
private:
    const long long m_iterations;
    size_t threads;
    size_t blockSize;
};

// Ctor
PiParallel::PiParallel(long long iterations) :
        m_iterations(iterations),
        threads(std::thread::hardware_concurrency()),
        blockSize((m_iterations + threads - 1) / threads) {
}

//Computing pi launching threads
[[nodiscard]] long double PiParallel::operator()() const {
    std::vector<std::future<long double>> futures;
    for (auto i = size_t(1); i < threads; ++i) {
        Pi pi(blockSize);
        futures.push_back(std::async(std::launch::async, &Pi::operator(), &pi));
    }
    auto lastResult = Pi(blockSize)();
    std::for_each(futures.begin(), futures.end(), [&lastResult](auto& x) {
        lastResult += x.get();
    });
    return lastResult / threads;
}