import UIKit

class Person {
    var nome: String
    var gender: Character
    var age: Int = 0
    
    init(nome: String, gender: Character) {
        self.nome = nome
        self.gender = gender
    }
    
    func speak(sentence: String) {
        if age < 3 {
            print("gugu dada")
        } else {
            print(sentence)
        }
    }
    
    func introduce() {
        self.speak(sentence: "Olá, meu nome é \(self.nome)")
    }
}

class Job {
    var title: String
    var sallary: Double
    
    init(title: String, sallary: Double) {
        self.title = title
        self.sallary = sallary
    }
}

var joao = Person(nome: "João", gender: "M")
var clara = Person(nome: "Clara", gender: "F")
var fabio = Person(nome: "Fábio", gender: "M")

joao.age = 34
clara.age = 27
fabio.age = 1

joao.introduce()
clara.introduce()
fabio.introduce()

class Vehicle {
    var speed: Double = 0 {
        didSet {
            self.speed = min(speed, maxSpeed)
        }
    }
    
    var model: String
    static let speedUnit: String = "Km/h"
    
    var maxSpeed: Double {
        return 250.0
    }
    
    var speedInMilesPerHour: Double {
        get {
            return self.speed / 1.60934
        }
        set {
            self.speed = newValue * 1.60934
        }
    }
    
    init(model: String) {
        self.model = model
    }
    
    // Método de instância -> deve instanciar um objeto da classe para utilizar o método
    func descript() -> String {
        return "Veículo \(self.model), velocidade atual: \(self.speed)"
    }
    
    // Método de classe -> não é necessário instanciar um objeto da classe para utiliza-lo
    class func alert() -> String {  // Também podemos usar "static func", porém funções do tipo "static" não podem ser sobreescritas(override)!
        return "Se beber, não dirija!"
    }
}

print(Vehicle.alert())
print(Vehicle.speedUnit)

let car = Vehicle(model: "City")
car.speed = 500
print(car.speed)
