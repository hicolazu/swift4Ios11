import UIKit

// Enumeradores => Enums!

enum CompassPoint {
    case north
    case east
    case west
    case south
}

var direction = CompassPoint.north
// ou
var direction2: CompassPoint = .south

direction = .south

enum SeatPosition: String {
    case aisle = "corredor"
    case middle = "meio"
    case window = "janela"
}

let passengerSeat: SeatPosition = .window

switch passengerSeat {
    case .aisle:
        print("Passageiro está sentado no corredor!")
    case .middle:
        print("Passageiro está no meio!")
    case .window:
        print("Passageiro está sentado na janela!")
}

print("O passageiro está sentado na \(passengerSeat.rawValue)")

enum Month: Int {
    case january
    case february
    case march
    case april
    case may
    case june
    case july
    case august
    case september
    case october
    case november
    case december
}

print("Mês \(Month.may.rawValue)")

// Valores associados

enum Measure {
    case weight(Double)
    case age(Int)
    case size(width: Double, height: Double)
}

let measure: Measure = .age(18)
let measure2: Measure = .weight(89.3)
let measure3: Measure = .size(width: 25.0, height: 23.0)

func calcMeasure(measure: Measure) {
    switch measure {
        case .weight(let weight):
            print("O seu peso é: \(weight)")
        case .age(let age):
            print("Sua idade é: \(age)")
        case .size(let width, let height):
            print("As medidas de tamanho são: \(width), \(height)")
    }
}

calcMeasure(measure: measure)
calcMeasure(measure: measure2)
calcMeasure(measure: measure3)
