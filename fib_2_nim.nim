import os
import strutils

proc fib(n: uint64): uint64 =
    if n <= 1: return n
    return fib(n - 1) + fib(n - 2)

let n :uint64 = strutils.parseUInt(os.paramStr(1))
echo "> n: ", n, " | fib(n): ", fib(n+1)
