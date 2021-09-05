#include <benchmark/benchmark.h>

uint64_t SomeFunction() {
	uint64_t ret = 0;
	for (int i = 0; i < 1000; ++i) {
		ret *= ret + i;
	}

	return ret;
}

static void BM_SomeFunction(benchmark::State& state) {
	// Perform setup here
	for (auto _ : state) {
		// This code gets timed
		SomeFunction();
	}
}

static void BM_StringCreation(benchmark::State& state) {
	for (auto _ : state)
		std::string empty_string;
}

static void BM_StringCopy(benchmark::State& state) {
	std::string x = "hello";
	for (auto _ : state)
		std::string copy(x);
}


BENCHMARK(BM_SomeFunction);
BENCHMARK(BM_StringCreation);
BENCHMARK(BM_StringCopy);

// Run the benchmark
BENCHMARK_MAIN();