import UIKit

for day in 1...30 {
    print("Estou no dia \(day) de Junho!")
}

for _ in 1...5 {
    print("Estou sendo repetido 5 vezes!")
}

let students = [
    "João",
    "Murilo",
    "Melissa",
    "Pedro"
]

for student in students {
    print("Nome do estudante: \(student)")
}

let name = "Henrico Lazuroz"

for (index, letter) in name.enumerated() {
    print("Letter position: \(index) Letter value: \(letter)")
}

let people = [
    "Paulo": 25,
    "Renata": 18,
    "Kleber": 33,
    "Eric": 39
]

//for person in people {
//    print(person.key, person.value)
//}

for (name, age) in people {
    print(name, age)
}

// While
var life = 10

while life >= 0 {
    if life == 0 {
        print("O jogador morreu!")
    } else {
        print("O jogador está com \(life) vidas")
    }
    life -= 1
}

// Geração de jogos da Mega Sena

import Foundation

var megaSena: [Int] = []
while megaSena.count < 6 {
    let number = Int(arc4random_uniform(60)+1)
    if !megaSena.contains(number) {
        megaSena.append(number)
    }
}

print(megaSena.sorted())

// Repeat While => Do While

var tries = 0
var diceNumber = 0

repeat {
    tries += 1
    diceNumber = Int(arc4random_uniform(6)+1)
} while diceNumber != 6

print("Número de tentativas = \(tries)")

let numbers: [Double] = [1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0]

for number in numbers {
    if number == 6.0 {
        print("For chegou ao 6.0!")
        break
    }
}
