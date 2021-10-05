import UIKit


/// Operadores básicos.

/// Constante cuyo valor no puede ser reemplazado en tiempo de ejecución
let estoEsUnaConstante = 10
//estoEsUnaConstante = 15

/// Variable cuyo valor puede ser reemplazado en tiempo de ejecución.
var estoNoEsUnaConstante = 10
estoNoEsUnaConstante = 15

let fruta: String = "Mango"

// Int, String, Bool, Double


/// Operadores
var resultado: Int = 0

resultado = 5 + 5
resultado += 5

print(resultado)


/// Class, Enum, Struct

// Value type vs Reference type

// Reference type
// - Class

// Value type
// - Enum
// - Struct


/// Clases
class Fruta {
    
    // Propiedades
    let name: String
    let color: String
    let type: TokenType = .faceID
    
    /// método constructor
    init(name: String, color: String) {
        self.name = name
        self.color = color
    }
    
}

class Transporte {
    // Propiedades
    let type: String = "Auto"
    let id: Int = 10
}

let mango = Fruta(name: "", color: "")
let auto = Transporte()


/// Enum
enum TokenType: Int {
    case touchID // = 0
    case faceID // = 1
    case hardToken // = 2
    case softToken // = 3
}

let type: TokenType = .hardToken
let newType: TokenType? = TokenType(rawValue: 5)

/// Structs
public struct Auth {
    // propiedades
    let name: String
    let id: Int
    let url: String
    let serverName: String = ""
    
    public init(name: String, id: Int, url: String) {
        self.name = name
        self.id = id
        self.url = url
    }
}

let authValue = Auth(name: "", id: 2, url: "")


/// Ejemplo:
struct ConstantsStruct {
    static let v1 = ""
    static let v2 = ""
}

enum ConstantsEnum {
    static let v1 = ""
    static let v2 = ""
}

ConstantsStruct.v1
ConstantsStruct.v2
ConstantsStruct()

ConstantsEnum.v1
ConstantsEnum.v2


/// Opcionales
// Dos posibles resultados:
// - El tipo de valor deseado.
// - nil.

var variableOptional: String? = nil
variableOptional = "iOS"
print(variableOptional)

// Primera forma de validar si un optional es nulo o no.
if let os = variableOptional {
    print(os)
} else {
    print(variableOptional)
}

// Segunda forma de validar si un optional es nulo o no.
//guard let os = variableOptional else { print("El valor es nulo"); }
//print(os)

// Tercera forma de validar
if variableOptional == nil {
    print("El valor es nulo")
} else {
    print(variableOptional)
}

/// ?, !

///
struct Product {
    let id: Int
    let name: String
    let category: String
    let desc: Description?
}

struct Description {
    let name: String
}

let tv = Product(id: 10, name: "OL", category: "TU", desc: nil)

let name = tv.desc?.name

if let n = name {
    
} else {
    
}

//if name == nil {
//    print(name!)
//}


/// Métodos
func nombreDeMetodo() {} //Método se llama `nombreDeMeotodo` y no recibe parámetro ni retorna valores.
func nomDeMetodo(param: Double) {} // Método se llama `nomDeMetodo` y recibe un parámetro y no retorna valores.
func nombreMet() -> Bool {
    return true
} // Método se llama `nombreMet` y no recibe parámetro pero si retorna un valor del tipo Bool.

func nombreConVariosParametros(param1: Double, param2: String, param3: Int) {} // Método con varios parámetros.

nombreDeMetodo()
nomDeMetodo(param: 12.0)
nombreConVariosParametros(param1: 9.0, param2: "", param3: 10)

func parametroConValorPredefinido(name: String = "iOS") {
    print(name)
}

func didSelect(index: Int) {}
func selected(_ index: Int) {}
func notSelected(at index: Int) {}

didSelect(index: 4)
selected(4) // didSelect(4)
notSelected(at: 4) // didSelected(at: 4)

parametroConValorPredefinido()
parametroConValorPredefinido(name: "Android")


class Device {
    var brand: String
    let modelName: String
    let color: String
    
    // Pre condición: El color no puede ser una cadena vacia.
    init?(brand: String, modelName: String, color: String) {
        
        if color.isEmpty {
            return nil
        }
        
        self.brand = brand
        self.modelName = modelName
        self.color = color
    }
    
}

//let iPhone = Device(brand: "", modelName: "", color: "r")
//print(iPhone)

let device1 = Device(brand: "", modelName: "", color: "rojo")
let device2 = device1

device2?.brand = "Apple"

print(device1?.brand)
print(device2?.brand)

struct Car { //enum
    let color: String
    var model: String
}

let car1 = Car(color: "", model: "")
var car2 = car1

car2.model = "Yaris"

print(car1.model)
print(car2.model)
