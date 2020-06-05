import UIKit

// Closures == Arrow Functions == Lambda

func sum(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func sub(_ a: Int, _ b: Int) -> Int {
    return a - b
}

func calculate(_ a: Int, _ b: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(a, b)
}

let result = calculate(10, 20, operation: sum)

let mult = calculate(10, 20, operation: { (a: Int, b: Int) -> Int in
    return a * b
})

print(result, mult)

// Não é obrigatório passar os argumentos e os tipos na Closure, porque ambos já foram definidos na função
let div = calculate(20, 10, operation: {
    return $0 / $1 // $n -> são os argumentos da função
})

// Podem ser feitas apenas quando a Closure for o ÚLTIMO ARGUMENTO DA FUNÇÃO

let resultSub = calculate(20, 10, operation: -)

let result2 = calculate(20, 10) {$0 + $1}

import Foundation

var names = [
    "Henrico",
    "Joao",
    "Pedro"
]

// MAP
names.map({
    print($0)
})

// FILTER
let filter = names.filter({
    $0.count <= 5
})
print(filter)

// REDUCE
