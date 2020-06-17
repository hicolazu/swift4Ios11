import UIKit

var names = ["Joao", "Murilo"]
var joao = names[0]
print(joao)

var namesB: [String] = []
var numbers: [Int]? = []

numbers?.append(2);

if let numbers = numbers {
    print("How many indexes has array numbers: \(numbers.count)")
    print("Is array numbers empty: " + String(numbers.isEmpty))
    print("What is the first number of array numbers: \(numbers.first!)")
}

numbers?.insert(4, at: 1)
print(numbers![1])
