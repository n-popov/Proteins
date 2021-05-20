#include <vector>
#include <map>
#include "../MC/random_generator.h"
#include "dot.h"

#define RANGE(cont) std::begin(cont), std::end(cont)

template <typename T, typename Container>
inline dot<T> find_minimum(dot<T> dot, const Container& cont) {
    std::vector<double> dists;
    std::transform(RANGE(cont),
                   std::back_inserter(dists), [&dot](const auto& item){return dist(item, dot);});
    return *std::next(std::begin(cont),
                      std::distance(std::begin(dists), std::min_element(RANGE(dists))));

}


template<typename Container>
auto kmeans(const Container& points, size_t k) {
    RandomFloatGenerator generator(0., 1.);
    std::map<dot<double>, Container> clusterized_points;
    std::set<dot<double>> centers;
    std::vector<double> dists(k, 1.);
    std::generate_n(std::inserter(centers, std::end(centers)), k,
                    [&generator](){return dot{generator(), generator()};});
    for (;*std::max_element(RANGE(dists)) >= 0.01;) {
        dists.clear();

        clusterized_points.clear();
        std::transform(RANGE(centers), std::inserter(clusterized_points, std::end(clusterized_points)),
                       [](const auto& x){return std::make_pair(x, Container{});});


        for(const auto& point : points) {
            clusterized_points[find_minimum(point, centers)].push_back(point);
        }

        centers.clear();
        for(auto& [center, cluster] : clusterized_points) {
            auto new_center = std::accumulate(RANGE(cluster), dot(0., 0.)) / std::size(cluster);
            dists.push_back(dist(center, new_center));
            centers.insert(new_center);
        }
    }
    return clusterized_points;
};


