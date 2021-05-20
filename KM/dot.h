#include <cmath>
#include <functional>

#ifndef PROTEINS_DOT_H
#define PROTEINS_DOT_H

template <typename T>
class dot {
public:
    dot(T x, T y);

    [[nodiscard]] inline auto dist(const dot& other) const noexcept {
        return std::sqrt(std::pow(x - other.x, 2) + std::pow(y - other.y, 2));
    }

    dot<T> operator+(const dot& other) const noexcept {
        return {x + other.x, y + other.y};
    }

    dot<T>& operator+=(const dot& other) const noexcept {
        *this = {x + other.x, y + other.y};
        return this;
    }

    template<typename Denom>
    dot<T> operator/(Denom d) const {
        return {x / d, y / d};
    }

    bool operator<(const dot& other) const noexcept {
        return std::make_pair(x, y) < std::make_pair(other.x, other.y);
    }

    template<typename>
    friend auto dist(const dot<T>&, const dot<T>&);


    friend std::ostream& operator<<(std::ostream& out, const dot<T>& dot) {
        return std::cout << '(' << dot.x << ", " << dot.y << ')';
    }
private:
    T x, y;
};

template<typename T>
auto dist(const dot<T>& lhs, const dot<T>& rhs) {
    return lhs.dist(rhs);
}

template<typename T>
dot<T>::dot(T x, T y): x(x), y(y) {}

#endif //PROTEINS_DOT_H
