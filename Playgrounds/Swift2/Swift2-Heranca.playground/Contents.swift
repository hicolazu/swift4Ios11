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
}

let billy = Dog(color: "Preto, Branco e Caramelo", gender: "M", breed: "Beagle")
let zeCarioca = Bird(color: "Verde e amarelo", gender: "M", breed: "Papagaio", canFly: true)

let maleBird = Bird(color: "Black", breed: "Sabiá")

// 1) Designeted initializer deve chamar outro Designeted da sua classe pai
// 2) Convenience initializer deve chamar outro initializer da mesma classe (self.init())
// 3) Convenience initializer deve chamar, no final, um designeted initializer

billy.emitSound()
zeCarioca.emitSound()
maleBird.emitSound()
