import UIKit

struct Student {
    var name: String
    var age: Int
}

class Person {
    var name: String
    var age: Int
    weak var friend: Person?
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    deinit {
        print("\(self.name) foi desalocado da memória!\n")
    }
}

// =================================================================
// Structs -> Value Type

var student1 = Student(name: "Zeca", age: 22)
var student2 = student1 // student2 é uma cópia do student1, *não são o mesmo objeto na memória!*

student1.name = "Alysson"
student1.age = 33

print("Student 1:", student1.name, student2.age)
print("Student 2:", student2.name, student2.age, "\n")

// =================================================================
// Classes -> Reference Type

var person1 = Person(name: "Zeca", age: 22)
var person2 = person1 // person2 é uma *referência* do person1 -> ou seja, apontam para o mesmo espaço em memória!

person1.name = "Alysson"
person1.age = 33

print("Person 1:", person1.name, person1.age)
print("Person 2:", person2.name, person2.age, "\n")

// =================================================================

var person3: Person? = Person(name: "Zeca", age: 22)
var person4: Person? = person3

person3!.name = "Henrique"
person3!.age = 44

print("Person 4:", person4!.name, person4!.age)

person4 = nil
person3 = nil
// Result = deinit => print("\(self.name) foi desalocado da memória!")

// =================================================================

var person5: Person? = Person(name: "Felipe", age: 27)
var person6: Person? = Person(name: "Henrico", age: 18)

person5!.name = "José"
person5!.age = 55

print("Person 6:", person6!.name, person6!.age)

person5!.friend = person6
person6!.friend = person5

person5 = nil
person6 = nil
/* Result = não deinit => os objetos em memória estão se referenciando por causa da propriedade friend
/  Por isso, o *Reference Count* dos 2 é igual a 1, pois um referência o outro mesmo não estando mais sendo
/ referenciados por um objeto (person5 e person6)
/ Isto gera um Memory Leak (vazamento de memória) -> objetos em memória que nós não podemos manipular
/ Solucação: anotar a propriedade friend como weak (fraca) -> ARC (como se fosse um Garbage Collector)
*/
