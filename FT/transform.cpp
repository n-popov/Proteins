#include <iostream>
#include <iterator>

#include "fourier.h"

int main() {
    std::vector<int> x(10);
    std::iota(RANGE(x), 0);

    std::vector<std::complex<float>> y;
    std::transform(RANGE(x), std::back_inserter(y), [](auto x){return std::complex(std::sin<float>(x));});
    std::cout << "y:" << std::endl;
    std::copy(RANGE(y), std::ostream_iterator<decltype(y)::value_type>(std::cout, " "));
    std::cout << std::endl;

    auto Y = transform(y);

    std::cout << "Y:" << std::endl;
    std::copy(RANGE(Y), std::ostream_iterator<decltype(Y)::value_type>(std::cout, " "));
    std::cout << std::endl;
    auto new_y = transform(Y, true);

    std::cout << "y after transforms:" << std::endl;
    std::copy(RANGE(new_y), std::ostream_iterator<decltype(new_y)::value_type>(std::cout, " "));
    std::cout << std::endl;
}
