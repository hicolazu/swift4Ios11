import UIKit

// Set => Lista não-ordenada de objetos do mesmo tipo, que não podem se repetir

var movies: Set<String> = [
    "Matrix",
    "Vingadores",
    "Jurassic Park",
    "De volta para o futuro"
]

var movies2 = Set<String>()

movies2.insert("Vingadores: Ultimato")

print(movies2.count)

let result = movies2.insert("Vingadores: Ultimato")
print("Resultado da inserção: \(result.inserted) \nSet após tentativa de inserção: \(result.memberAfterInserted)")
// .inserted: Boolean => false, pois "Vingadores: Ultimato" já existe
// .memberAfterInserted: Set<String> => set após a tentativa de inserção

movies2.remove("Vingadores: Ultimato")
print(movies2)

for movie in movies {
    print("Filme: \(movie)")
}

if movies.contains("Matrix") {
    print("Matrix is on the movies list!")
}

// Junção de dois Sets

// -> apenas os itens contidos em ambos os Sets
movies2.insert("Jurassic Park")
movies2.insert("Matrix")

let favoriteMovies = movies.intersection(movies2)
print("Apenas os filmes favoritos: \(favoriteMovies)")

// -> todos os itens de ambas os Sets
let allMovies = movies.union(movies2)
print("Todos os filmes: \(allMovies)")

// Remoção de Sets
movies = movies.substracting(movies2)
print("Lista de filmes sem \(movies2) = \(movies)")

// Tupla
let adress: (type: String, name: String, number: Int, city: String, state: String, zipCode: String)
    = ("Av", "Paulista", 1578, "São Paulo", "SP", "01310-200")
print(adress.2)
print(adress.zipCode)

let (type, name, _, _, state, zipCode) = adress
print(type)
print(name)

