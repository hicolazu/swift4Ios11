import UIKit

// First Class Citizen
// Podem ser retornadas por outras funções

func sum (_ a: Int, _ b: Int) -> Int {
    return a + b
}

func subtract (_ a: Int, _ b: Int) -> Int {
    return a - b
}

func divide (_ a: Int, by b: Int) -> Int {
    return a / b
}

func multiply (_ a: Int, by b: Int) -> Int {
    return a * b
}

typealias Op = (Int, Int) -> Int

func applyOperation(_ a: Int, _ b: Int, operation: Op) -> Int {
    return operation(a, b)
}

let result = applyOperation(10, 20, operation: sum)
print(result)

enum Operation {
    case soma
    case mult
    case sub
    case div
}

func getOperation(_ operation: Operation) -> Op {
    switch operation {
    case .soma:
        return sum
    case .sub:
        return subtract
    case .mult:
        return multiply
    case .div:
        return divide
    }
}

let resultado = getOperation(Operation.mult)(10, 20)
print(resultado)
