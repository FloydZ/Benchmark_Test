mptest: mptest.c
	gcc -o -O3 mptest mptest.c -fopenmp
mptestload: mptestload.c
	gcc -o -O3 mptestload mptestload.c -fopenmp
mpitest: mpitest.c
	mpicc -o -O3 mpitest mpitest.c
