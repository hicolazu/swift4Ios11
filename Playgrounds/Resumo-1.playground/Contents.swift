import UIKit

// Arrays, Optionals, Dicionarios, Sets, Tuplas e Enums

//Arrays
var numbers: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
let optionalNumbers: [Int]? = [1]

numbers.append(11)
numbers.remove(at: 10)
numbers.insert(11, at: 10)

print(numbers)

// Optionals
let optional1: Int? = 25
let optional2: String? = String(optional1!)

if let optional2 = optional2 {
    print("I could get the value of optional2: \(optional2)")
}

// guard let value2 = Int(optional2!) else {return}

// Dicionários
let dicionario = [
    "Abacaxi": "A",
    "Tomate": "T",
    "Cenoura": "C"
]

print("Tomate começa com", dicionario["Tomate"]!)

// Sets
var set: Set<String> = ["Ana", "Pedro", "João", "Joana"]
var i = 0

for name in set {
    print(name)
}

// Tuplas
let (sucess, memberAfterInsert) = set.insert("Pedro")
print("Sucess: \(sucess), Result: \(memberAfterInsert)")

let tupla: (name: String, age: Int, weight: Double) = ("João", 25, 79.5)
print("Name: \(tupla.name), Age: \(tupla.age), Wight: \(tupla.weight)")

// Enums
enum Sweat: String {
    case cake = "Bolo"
    case cupcake = "Cupcake"
    case chocolate = "Brigadeiro"
}

let sweat: Sweat = .cake
print(sweat.rawValue)
