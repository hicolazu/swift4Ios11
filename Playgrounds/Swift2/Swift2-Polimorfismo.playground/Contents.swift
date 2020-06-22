import UIKit

class Animal {
    let color: String
    let gender: Character
    let breed: String
    
    init(color: String, gender: Character, breed: String) {
        self.color = color
        self.gender = gender
        self.breed = breed
    }
    
    func emitSound() {
        print("...")
    }
}

class Dog: Animal {
    func run() {
        print("O cachorro está correndo!")
    }
    
    override func emitSound() {
        print("au au au")
    }
}

class Bird: Animal {
    let canFly: Bool
    
    //Designated Initializer -> instância todas as propriedades do objeto
    init(color: String, gender: Character, breed: String, canFly: Bool) {
        self.canFly = canFly
        super.init(color: color, gender: gender, breed: breed)
    }
    
    //Convenience Initializer
    convenience init(color: String, breed: String) {
        self.init(color: color, gender: "M", breed: breed, canFly: true)
    }
    
    func fly() {
        if canFly {
            print("O pássaro está voando!")
        } else {
            print("Este pássaro não voa!")
        }
    }
    
    override func emitSound() {
        print("🎶 🎶 🎶 🎶")
    }
}

class Duck: Bird {
    
    init(color: String, gender: Character, breed: String) {
        super.init(color: color, gender: gender, breed: breed, canFly: true)
    }
    
    override func emitSound() {
        print("Quack quack quack")
    }
}

let billy = Dog(color: "Preto, Branco e Caramelo", gender: "M", breed: "Beagle")
let zeCarioca = Bird(color: "Verde e amarelo", gender: "M", breed: "Papagaio", canFly: true)
let maleBird = Bird(color: "Black", breed: "Sabiá")
let donald = Duck(color: "White", gender: "M", breed: "Disney")

billy.emitSound()
zeCarioca.emitSound()
maleBird.emitSound()

// Type Casting

let animals: [Animal] = [
    Animal(color: "Black", gender: "M", breed: "Zurubeba"),
    Dog(color: "Marrom", gender: "M", breed: "Cocker Spaniel"),
    Duck(color: "Branco", gender: "F", breed: "Silvestre"),
    Bird(color: "Green", gender: "F", breed: "Avestruz", canFly: false)
]

for animal in animals {
    animal.emitSound()
    
    if animal is Dog {
        (animal as! Dog).run()
    } else if animal is Duck {
        (animal as! Duck).fly()
    }
    
    if let bird = animal as? Bird {
        bird.fly()
    }
    
    switch animal {
        case let dog as Dog:
            dog.run()
        case let bird2 as Bird:
            bird2.fly()
        default:
            break
    }
}
