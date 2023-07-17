package main

import (
	"os"
    "fmt"
    "strconv"
)

func Fib(n uint64) uint64 {
	if n > 2 {
		return Fib(n - 1) + Fib(n - 2)
	}
	return n
}	

func main() {
	var n uint64
	n, _ = strconv.ParseUint(os.Args[1], 10, 64)
	fmt.Println("> n:", n, "| fib(n):", Fib(n))
}

