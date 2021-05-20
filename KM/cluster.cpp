#include <iostream>
#include <iterator>

#include "kmeans.h"

int main() {
    std::vector<dot<double>> points;
    RandomFloatGenerator generator(0., 1.);
    size_t n, k;
    std::cout << "Points' amount: ";
    std::cin >> n;
    std::generate_n(std::back_inserter(points), n, [&generator](){return dot{generator(), generator()};});
    std::cout << std::endl << "Clusters' amount: ";
    std::cin >> k;
    for(const auto& [center, cluster] : kmeans(points, k)) {
        std::cout << "For center in " << center << ":\n";
        std::copy(RANGE(cluster),
                  std::ostream_iterator<decltype(cluster)::value_type>(std::cout, "\n"));
    }
}
