import UIKit

//func nome (parametro: Tipo) -> TipodeRetorno {
//    return response: TipodeRetorno
//}

func sayHello() {
    print("Hello from Playground!")
}
sayHello()

func sayMessage(message: String) {
    print(message)
}
sayMessage(message: "Bom dia!")

func say(message: String, to: String) -> String {
    return message + " " + to
}
print(say(message: "Boa tarde", to: "Henrico"))

func sum(_ a: Int, _ b: Int) -> Int {
    return a + b
}
print("A soma é: \(sum(2, 10))")

func multiply(_ number1: Int, by number2: Int) -> Int {
    return number1 * number2
}
print("A multiplicação é: \(multiply(20, by: 10))")

func sum2(_ initialValue: Int, withValues values: Int...) -> Int {
    var result = initialValue
    for value in values {
        result += value
    }
    return result
}
print("A soma de 10 com 1, 2, 3, 4, 5 é: \(sum2(10, withValues: 1, 2, 3, 4, 5))")

import Foundation

let studentData = "Henrico Lazuroz:18"

func getStudentInfo(_ data: String) -> (name: String, age: Int) {
    let info = data.components(separatedBy: ":")
    let name = info[0]
    let age = Int(info[1])
    return (name, age!)
}

let student = getStudentInfo(studentData)
print("O nome do estudante é: \(student.name) e sua idade é: \(student.age)")
