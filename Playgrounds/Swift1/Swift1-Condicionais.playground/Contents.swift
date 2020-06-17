import UIKit

var str = "Hello, playground"

var letterType: String
var letter = "a"
if letter == "a" || letter == "e" || letter == "i" || letter == "o" || letter == "u" {
    letterType = "vogal"
} else {
    letterType = "consoante"
}
print(letterType)

letter = "v"
switch letter {
    case "a", "e", "i", "o", "u":
        letterType = "vogal"
    default:
        letterType = "consoante"
}

print(letterType)

let speed = 95.0
switch speed {
    case 0.0..<20.0:
        print("Primeira marcha")
    case 20.0..<40.0:
        print("Segunda marcha")
    case 40.0..<50.0:
        print("Terceira marcha")
    case 50.0..<90.0:
        print("Quarta marcha")
    default:
        print("Quinta marcha")
}
