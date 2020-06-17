import UIKit

import Foundation

//PREFIX
prefix operator <|
prefix func <| (rhs: [Int]) -> [Int] {
    let result = rhs.map({$0 - 1})
    
    return result
}
let ages = [9, 25, 30, 42, 7, 18]
let lastYearAges = <|ages
print(lastYearAges)

//POSTFIX
postfix operator ++
postfix func ++ (rhs: Int) -> Int {
    return rhs + 1
}
let value = 1
print(value++) // 2

for i in 1...5 {
    print(i)
}


// INFIX
infix operator ---
func --- (lhs: Int, rhs: Int) -> [Int] {
    return Array(rhs...lhs).reversed()
}
30---12
Array(12...30)

infix operator >-<
func >-< (total: Int, universe: Int) -> [Int] {
    var result: [Int] = []
    while result.count < total {
        let randomNumber = Int(arc4random_uniform(UInt32(universe))+1)
        if !result.contains(randomNumber) {
            result.append(randomNumber)
        }
    }
    return result.sorted()
}

6>-<60
