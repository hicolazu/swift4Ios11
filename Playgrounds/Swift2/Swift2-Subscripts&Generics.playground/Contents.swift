import UIKit


// Subscript
class Car {
    var licensePlate: String
    
    init(licensePlate: String) {
        self.licensePlate = licensePlate
    }
    
    subscript(index: Int) -> String{    // Subscript acessada por [index]
        get {
            return String(Array(licensePlate)[index])
        }
        set {
            var characters = Array(licensePlate)
            characters[index] = Character(newValue)
            self.licensePlate = String(characters)
        }
    }
}

let car = Car(licensePlate: "EXP-8722")
print(car.licensePlate.last!)
print(car[7])

car[0] = "A"
print(car.licensePlate)

// Generics
func swapValues<T>(_ a: inout T, _ b: inout T) {    // T -> Tipo Genérico // inout -> permite manipular o valor dos parâmetros
    let tempA = a
    a = b
    b = tempA
}

var a = 10
var b = 20

swapValues(&a, &b)
print(a, b)
