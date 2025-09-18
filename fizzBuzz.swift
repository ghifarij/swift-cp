//
//  fizzBuzz.swift
//  
//
//  Created by Afga Ghifari on 18/09/25.
//

import Foundation

func fizzBuzz(n: Int) {
    for i in 1...n {
        if i % 3 == 0 && i % 5 == 0 {
            print("FizzBuzz")
        } else if i % 3 == 0 {
            print("Fizz")
        } else if i % 5 == 0 {
            print("Buzz")
        } else {
            print(i)
        }
    }
}

// Example usage:
fizzBuzz(n: 20)
