import UIKit

// Scruct == Class
struct Person {
    var name: String // Propriedade
    var age: Int = 0
    
    init(name: String) {
        self.name = name
    }
    
    func sayHello() {
        print("Olá, meu nome é \(name)")
    }
    
    mutating func incrementAge() {
        self.age += 1
    }
}

var person = Person(name: "Henrico") // Construtor
person.age = 18

print(person.name)

person.sayHello()
person.incrementAge()

print(person.age)

// Computed Properties

struct Temperature {
    var celsius: Double
    var fahrenheit: Double {
        return self.celsius * 1.8 + 32
    }
}

var temperature = Temperature(celsius: 25)
print(temperature.fahrenheit)
