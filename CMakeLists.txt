cmake_minimum_required(VERSION 3.17)
project(Proteins)

set(CMAKE_CXX_STANDARD 20)

add_executable(MC MC/mc.cpp MC/pi.h MC/random_generator.h)
add_executable(Cluster KM/cluster.cpp KM/kmeans.h KM/dot.h)
add_executable(Fourier FT/transform.cpp FT/fourier.h)