#include <iostream>
#include "pi.h"

int main() {
    std::cout << "Pi = " << PiParallel()() << std::endl;
    return 0;
}
