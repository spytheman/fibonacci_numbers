import os
import strutils

proc fib(n: uint64): uint64 =
  if n > 2.uint64 : return fib(n - 1) + fib(n - 2)
  return n

let n :uint64 = strutils.parseUInt(os.paramStr(1))
echo "> n: ", n, " | fib(n): ", fib(n)
