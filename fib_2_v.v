import os

fn fib(n u64) u64 {
	if n <= 1 {
		return n
	}
	return fib(n - 1) + fib(n - 2)
}

n := os.args[1] or { '47' }.u64()
res := fib(n + 1)
println('> n: ${n} | fib(n): ${res}')
