//: Playground - noun: a place where people can play

import Foundation

var n = 300
var numbers = [Int](2 ..< n)
var primeNumbers : [Int] = []

func isPrime(m: Int) -> Bool {
    if m < 2 {
        return false
    }
    
    let limit = Int(sqrt(Double(m)))
    
    if limit < 2 {
        return true
    }
    
    for j in 2...limit {
        if m % j == 0 {
            return false
        }
    }
    return true
}

for i in 0..<numbers.count {
    if isPrime(m: numbers[i]) {
        primeNumbers.append(numbers[i])
        
    }
}
print(primeNumbers)

func returnSum(Array: [Int]) -> Int {
    var result: Int = 0
    
    for i in 0..<Array.count {
        result = Array[i] + result
    }
    return result
}

returnSum(Array: primeNumbers)


