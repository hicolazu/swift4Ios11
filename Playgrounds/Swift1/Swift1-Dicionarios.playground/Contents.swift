import UIKit

var states = [
    "AC": "Acre",
    "SP": "São Paulo",
    "RJ": "Rio de Janeiro",
    "AM": "Amazonas",
    "ES": "Espiríto Santo",
    "BA": "Bahia"
]

var studentGrades: [String: Double] = [:] // Inicializando dicionário com tipos definidos e vazio
studentGrades["Math"] = 6.5
print(studentGrades["Math"]!)

states["GO"] = "Goiaz"
//states["GO"] = "Goiás"
let oldGo = states.updateValue("Goiás", forKey: "GO")
print("Old value for key \"GO\" value: \(oldGo!) \nNew value for key \"GO\" value: \(states["GO"]!)")


// Dictionarys properties
let count = states.count
let keys = Array(states.keys)
let values = Array(states.values)
print("Number of states: \(count) \nStates keys: \(keys) \nStates values: \(values)")
