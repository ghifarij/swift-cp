// Fibonacci using recursion
// fib(0) = 0, fib(1) = 1
// fib(n) = fib(n - 1) + fib(n - 2)

func fibonacci(_ num: Int) -> Int {
    if num == 0 {
        return 0
    } else if num == 1 {
        return 1
    } else {
        return fibonacci(num - 1) + fibonacci (num - 2)
    }
}

//Example
var num = 10
print("fibonacci of number \(num) is \(fibonacci(num))")