import UIKit

// Protocols -> Interfaces

enum FuelType {
    case gasoline, ethanol, diesel, flex
}

protocol ACCapable {
    var hasAc: Bool {get set}
    func turnAC(on: Bool)
}

class Vehicle {
    var brand: String
    var fuelType: FuelType
    
    init(brand: String, fuelType: FuelType) {
        self.brand = brand
        self.fuelType = fuelType
    }
}

class Car: Vehicle, ACCapable {
    let numberOfDoors: Int
    var hasAc: Bool = true
    
    init(brand: String, fuelType: FuelType, numberOfDoors: Int) {
        self.numberOfDoors = numberOfDoors
        super.init(brand: brand, fuelType: fuelType)
    }
    
    func turnAC(on: Bool) {
        if on {
            print("Ligando ar-condicionado")
        } else {
            print("Desligando ar-condicionado")
        }
    }
}

class Bike: Vehicle {
    let cc: Int
    
    init(brand: String, fuelType: FuelType, cc: Int) {
        self.cc = cc
        super.init(brand: brand, fuelType: fuelType)
    }
}

class Airplane: Vehicle, ACCapable {
    let numberOfEngines: Int
    var hasAc: Bool = true
    
    init(brand: String, fuelType: FuelType, numberOfEngines: Int) {
        self.numberOfEngines = numberOfEngines
        super.init(brand: brand, fuelType: fuelType)
    }
    
    func turnAC(on: Bool) {
        if numberOfEngines > 1 {
            print("Aviões mono-motores não podem ligar ar-condicionado!")
        } else {
            if on {
                print("Ligando ar-condicionado")
            } else {
                print("Desligando ar-condicionado")
            }
        }
    }
}
