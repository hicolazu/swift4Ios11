import UIKit

enum LoginError: Error {
    case wrongLogin
    case wrongPassword
    case noInternetConnection
}

func login(userName: String, password: String) throws -> Bool {
    if checkInternetConnection() {
        if userName != "henrico" {
            throw LoginError.wrongLogin
        } else if password != "123"{
            throw LoginError.wrongPassword
        } else {
         return true
        }
    } else {
        throw LoginError.noInternetConnection
    }
}

func checkInternetConnection() -> Bool {
    return true
}

do {
    try login(userName: "henrico", password: "12345")
} catch {
    print(error)
}
    
// OR

do {
    try login(userName: "henric", password: "123")
} catch LoginError.wrongLogin {
    print("Nome de usuário inválido!")
} catch LoginError.wrongPassword {
    print("Senha de usuário inválida!")
} catch LoginError.noInternetConnection {
    print("Sem conexão com a Internet!")
}

let loginResult = try? login(userName: "henrico", password: "12345")
