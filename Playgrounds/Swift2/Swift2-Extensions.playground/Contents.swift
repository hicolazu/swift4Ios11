// Extensões

import Foundation

let name = "Henrico Lazuroz"

extension String {
    var vowels: [Character] {
        var list: [Character] = []
        
        for character in self {
            switch String(character).lowercased() {
            case "a", "e", "i", "o", "u":
                list.append(character)
            default:
                break
            }
        }
        
        return list
    }
    
    func initials() -> String {
        return String(self.components(separatedBy: " ").map({$0.first!}))
    }
}

print(name.vowels)
print(name.initials())
