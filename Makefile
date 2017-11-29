SRC := ./*.cpp
DIR := ./*.h
SRCS := $(wildcard ./*.cpp)

LIBS := -pthread

CXX := g++

CXXFLAGS := -Wall -g -std=c++11 $(addprefix -I,$(DIR)) $(LIBS)

EXE := ./websrv

$(EXE) :$(SRCS)
	$(CXX) -o $(EXE) $(SRCS) $(CXXFLAGS)

clean:
	rm -rf ./main.exe
