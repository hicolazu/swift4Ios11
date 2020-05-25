import UIKit

var str = "Hello, playground"

var rg: Int?
var cnpj: Int?

//rg = 123456789
cnpj = 123456789

if let rg = rg {
    print(rg)
} else {
    print("Não existe valor de rg!")
}

let number: String = "34A"
let adressNumber = Int(number) ?? 0

var name: String!
name = "João"
print(name!)
