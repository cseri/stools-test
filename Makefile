
CC=g++
CXXFLAGS=-ansi -pedantic -Wall -Wextra

BINNAME=program
TESTNAME=program-test

all: ${BINNAME}
	

program: main.o fact.o
	g++ $+ -o ${BINNAME}

main.o: main.cpp fact.h
	g++ -c ${CXXFLAGS} $<

fact.o: fact.cpp fact.h
	g++ -c ${CXXFLAGS} $<



check: ${TESTNAME}
	./${TESTNAME}

TEST_CPPFLAGS=-I../gtest-1.6.0/include

${TESTNAME}: fact-test.o fact.o
	g++ -static $+ -o ${TESTNAME} -L../gtest-1.6.0/lib/.libs -lgtest -lgtest_main -lpthread

fact-test.o: fact-test.cpp fact.h
	g++ ${TEST_CPPFLAGS} -c ${CXXFLAGS} $<



clean:
	rm -f ${BINNAME}
	rm -f ${TESTNAME}
	rm -f *.o

.PHONY: all clean check


