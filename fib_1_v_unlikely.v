import os

fn fib(n u64) u64 {
	if _unlikely_(n > 2) {
		return fib(n - 1) + fib(n - 2)
	}
	return n
}

n := os.args[1] or { '47' }.u64()
res := fib(n)
println('> n: ${n} | fib(n): ${res}')
