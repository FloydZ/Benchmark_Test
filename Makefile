mptest: mptest.c
	gcc -o mptest mptest.c -fopenmp
mptestload: mptestload.c
	gcc -o mptestload mptestload.c -fopenmp
mpitest: mpitest.c
	mpicc -o mpitest mpitest.c
