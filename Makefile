mptest: mptest.c
	gcc -O3 -o mptest mptest.c -fopenmp

mptestload: mptestload.c
	gcc -O3 -o mptestload mptestload.c -fopenmp

mpitest: mpitest.c
	mpicc -O3 -o mpitest mpitest.c

gbench: gbench.cpp
	g++ -O3 -o gbench gbench.cpp -lbenchmark -lpthread
