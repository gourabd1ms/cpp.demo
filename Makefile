CXX=g++
CXXFLAGS=-Wall -Wextra -std=c++17 -Isrc
COVFLAGS=--coverage

all: main

main: src/main.cpp src/greet.cpp
	$(CXX) $(CXXFLAGS) -o main src/main.cpp src/greet.cpp

test: tests/test_greet.cpp src/greet.cpp
	$(CXX) $(CXXFLAGS) $(COVFLAGS) -o test_greet tests/test_greet.cpp src/greet.cpp
	./test_greet
	gcovr --sonarqube -r . -o coverage.xml

clean:
	rm -f main test_greet *.gcda *.gcno coverage.xml
