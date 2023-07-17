function fib(n) {
	if (n <= 1) {
		return n
	}
	return fib(n - 1) + fib(n - 2)
}

let n = 0n;
n = parseInt(process.argv[2]);
let res = fib(n+1);
console.log('> n:', n, '| fib(n):', res);

