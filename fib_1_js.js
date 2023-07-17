function fib(n) {
	if (n > 2) {
		return fib(n - 1) + fib(n - 2)
	}
	return n
}

let n = 0n;
n = parseInt(process.argv[2]);
let res = fib(n);
console.log('> n:', n, '| fib(n):', res);

