import UIKit

// Задание 1
func isEvenNumber(_ number: Int) -> Bool {
    return number % 2 == 0
}


// Задание 2
func isDivisibleByThree(_ number: Int) -> Bool {
    return number % 3 == 0
}


// Задание 3
var someArray = [Int]()
for i in 1...100 {
    someArray.append(i)
}


// Задание 4
for i in someArray {
    if isEvenNumber(i) || !isDivisibleByThree(i) {
        if let index = someArray.firstIndex(of: i) {
            someArray.remove(at: index)
        }
    }
}
print("Задание 4\n\(someArray)\n")


// Задание 5
var fibonacci = [Decimal]()
func createFibonacciNumber(for array: inout [Decimal]) {
    switch array.count {
    case 0, 1:
        array.append(1)
    default:
        array.append(array[array.count - 2] + array[array.count - 1])
    }
        
}
for _ in 1...50 {
    createFibonacciNumber(for: &fibonacci)
}
print("Задание 5\n\(fibonacci)\n")


//Задание 6
var primeNumbers = [2]
var currentNumber = 3
while primeNumbers.count < 100 {
    var isPrime = true
    for i in 2...currentNumber - 1 {
        if currentNumber % i == 0 {
            isPrime = false
            break
        }
    }
    if isPrime {
        primeNumbers.append(currentNumber)
    }
    currentNumber += 1
}
print("Задание 6\n\(primeNumbers)\n")
