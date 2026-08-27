CXX=g++
CXXFLAGS=-Wall -Wextra -std=c++17 -Isrc

all: main

main: src/main.cpp src/greet.cpp
	$(CXX) $(CXXFLAGS) -o main src/main.cpp src/greet.cpp

test: tests/test_greet.cpp src/greet.cpp
	$(CXX) $(CXXFLAGS) -o test_greet tests/test_greet.cpp src/greet.cpp
	./test_greet

clean:
	rm -f main test_greet
