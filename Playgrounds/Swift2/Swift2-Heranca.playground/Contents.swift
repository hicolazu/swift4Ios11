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
    
    init(color: String, gender: Character, breed: String, canFly: Bool) {
        self.canFly = canFly
        super.init(color: color, gender: gender, breed: breed)
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

billy.emitSound()
zeCarioca.emitSound()
