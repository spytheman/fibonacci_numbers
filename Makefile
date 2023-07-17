
.PHONY: all clean versions measure

all: fib_1_v fib_2_v fib_1_nim fib_2_nim fib_1_go fib_2_go

versions:
	v --version
	nim --version
	go version

clean:
	rm -rf fib_1_v fib_2_v fib_1_nim fib_2_nim fib_1_go fib_2_go

measure: all
	hyperfine './fib_1_v 42' './fib_2_v 42' './fib_1_nim 42' './fib_2_nim 42' './fib_1_go 42' './fib_2_go 42'

###############################

fib_1_v: fib_1_v.v
	v -prod -cc gcc fib_1_v.v
fib_2_v: fib_2_v.v
	v -prod -cc gcc fib_2_v.v

fib_1_nim: fib_1_nim.nim
	nim c -d:release fib_1_nim.nim
fib_2_nim: fib_2_nim.nim	
	nim c -d:release fib_2_nim.nim

fib_1_go: fib_1_go.go
	go build fib_1_go.go
fib_2_go: fib_2_go.go
	go build fib_2_go.go
