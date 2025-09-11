// Factorial using recursion
// n! = n * (n - 1) * (n - 2) ... * 1

func factorial(_ n: Int) -> Int {
    if n <= 1 {
        return 1 //base case
    } else {
        return n * factorial(n - 1) //recursive case
    }
}

//Example
print("factorial 4 is \(factorial(4))")