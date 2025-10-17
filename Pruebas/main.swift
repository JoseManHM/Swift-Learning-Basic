//
//  main.swift
//  Pruebas
//
//  Created by Jose Manuel Hernandez on 29/09/25.
//

import Foundation

print("Hello, World!")

var variable1 = 10;
var variableTexto = "Hola";
let const1: Int = 4;
let text1 = "El numero es ";
var numero1 = 10, numero2 = 20, numero3 = 13

let const2 = text1 + String(const1)

print(const2)

let text2 = "El número es \(const1)"

let text3 = "La suma de los números es \(variable1 + const1)"

let quote = """
 
Este es un texto en varias lineas \n por lo que se requiere mas espacio para poder mostrar \n todo el texto
"""

//Arreglos

var fruits = ["Orange", "Pineapple", "Watermelon"];
print("Las frutas son \(fruits)")

fruits.append("Apple")

print("Las nuevas frutas son \(fruits)")

var jobs = [
    "John": "Frontend Developer",
    "Sam": "Backend Developer",
    "Julia": "DevOps Engineer",
    "Tom": "UX Designer"
]

print("El trabajo de Sam es \(jobs["Sam"] ?? "No tiene trabajo")")

fruits = []

print("las frutas son \(fruits)")

let emptyArray: [String] = []
let emptyDictionary: [String: Int] = [:]

let languages: [String] = ["Java", "C#", "C++", "Javascript", "PHP"]

print(languages)


let edad = 18
if edad > 17 {
    print("Es mayor de edad")
} else {
    print("Es menor de edad")
}

let puedeEntrar = if edad >= 18 {
    "Claro que puede entrar"
} else {
    "No puede entrar"
}

print("Juan tiene", edad, puedeEntrar)

let musculo = "tricep"
switch musculo {
case "pecho":
    print("Hoy vamos a hacer press banca")
case "pierna":
    print("Hoy vamos a hacer sentadilla")
case "tricep":
    print("Hoy vamos a hacer rompecraneo")
case let x where x.hasSuffix("bicep"):
    print("Hoy vamos a hacer predicador")
default:
    print("Ese musculo no lo conozco")
}

let edades = [20, 25, 31, 23, 45, 60]
for edad in edades {
    print("La edad es", edad)
}

let ITAreas: [String] = ["Develop", "Network", "Cibersecurity", "Database", "Sysadmin", "Technical Support"]
for area in ITAreas {
    print("El area es", area)
}

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 40, 9, 16, 25],
]
var largest = 0
for (_, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print("El numero mas grande es", largest)

var n = 1
while n < 150 {
    n *= 2
}
print("El numero final es", n)

var m = 2
repeat {
    m *= 2
} while m < 2

print("El numero final 2 es", m)
            
var total = 0
for i in 0..<4 {
    total += i
}

print("EL total final es", total)

var tot = 0
for i in 0...4 {
    tot += i
    
}
print("El segundo total es", tot)



var optionalName: String? = "Juan S"
var saludo = "Hola"
if let nombre = optionalName {
    saludo = "Hola \(nombre)"
} else {
    saludo = "Hola desconocido"
}
print(saludo)

//Default value
let username: String? = nil
let nombre: String = "Pedro Paramo"
let saludoInformal = "Hola \(username ?? nombre)"
print(saludoInformal)
if let username {
    print("Quiubo \(username)")
}


//Funciones
func greet(person: String, day: String) -> String {
    return "Hola \(person), el dia de hoy es \(day)"
}
print(greet(person: "Manuel", day: "Viernes"))

func getCountry(_ country: String, continente continent: String) -> String {
    return "El pais \(country) está en \(continent)"
}
print(getCountry("Mexico", continente: "America"))

func calculateStatistics(numeros: [Int]) -> (minimo: Int, Maximo: Int, total: Int) {
    var minimo = numeros[0]
    var maximo = numeros[0]
    var total = 0
    
    for numero in numeros {
        if numero > maximo {
            maximo = numero
        } else if numero < minimo {
            minimo = numero
        }
        total += numero
    }
    return (minimo, maximo, total)
}
var statistics = calculateStatistics(numeros: [1, 10, 14, 15, 20, 30])
print("El minimo es \(statistics.minimo), el máximo es \(statistics.Maximo) y la suma es \(statistics.total)")
print("El minimo es \(statistics.0), el máximo es \(statistics.1) y la suma es \(statistics.2)")

func retornaValor() -> Int {
    var numero = 100
    func sumar() -> Void {
        numero += 10
    }
    sumar()
    return numero
}
print("El numero retornado es \(retornaValor())")

func sumarValor() -> ((Int) -> Int) {
    func sumarDos(number: Int) -> Int {
        return 2 + number
    }
    return sumarDos
}
var increment = sumarValor()
print("El resultado de sumarValor es \(increment(1))")

func hacenMatch(numeros: [Int], condicion: (Int) -> Bool) -> Bool {
    for numero in numeros {
        if condicion(numero) {
            return true
        }
    }
    return false
}
func esPar(numero: Int) -> Bool {
    print("Validando si \(numero) es par")
    return numero % 2 == 0
}
print("El resultado de hacenMatch es \(hacenMatch(numeros: [1, 3, 2, 5, 10], condicion: esPar))")

let numeros: [Int] = [4, 10, 2, 3]
let resultados = numeros.map({ (numero: Int) -> Int in
    let resultado = 3 * numero
    return resultado
})
print("Los resultados son \(resultados)")

let resultados2 = numeros.map({ numero in 3 * numero })
print("Los resultados 2 son \(resultados2)")

let numerosOrdenados = numeros.sorted { $1 > $0 }
print("Los numeros ordenados son \(numerosOrdenados)")

//Clases

class Persona {
    var edad = 0
    let sexo: String = "";
    func obtenerEdad() -> String {
        return "La edad de la persona es \(edad) años"
    }
    
    func getSexo(genero: String) -> String {
        return "La persona es \(genero)"
    }
}

var people = Persona()
people.edad = 20
let edadPeople = people.obtenerEdad()
print("La respuesta del metodo obtenerEdad es \(edadPeople)")

class Coche {
    var color: String = ""
    var puertas: Int = 0
    var origen: String = "Japones"
    init(color: String, puertas: Int) {
        self.color = color
        self.puertas = puertas
    }
    
    func obtenerCoche() -> String {
        return "El coche es de color \(color) y tiene \(puertas) puertas y es de origen \(origen)"
    }
}

var coche = Coche(color: "Rojo", puertas: 4)
let cocheDescripcion = coche.obtenerCoche()
print("La descripcion del coche es: \(cocheDescripcion)")

class Camioneta: Coche {
    var tipo: String
    init(tipo: String, color: String, puertas: Int) {
        self.tipo = tipo
        super.init(color: color, puertas: puertas)
        origen = "Europeo"
    }
    
    func obtenerTipo() -> String {
        return "El tipo de la camioneta es \(tipo)"
    }
    
    override func obtenerCoche() -> String {
        return "La camioneta es de tipo \(tipo), es de color \(color), tiene \(puertas) puertas y es de origen \(origen)"
    }
    
    func obtenerCoche(tipo: String) -> String {
        return "La camioneta es de tipo \(tipo)"
    }
}

var pickup = Camioneta(tipo: "PickUp", color: "Blanca", puertas: 2)
pickup.origen = "Americano"
let camionetaDescripcion = pickup.obtenerCoche()
print("La descripcion de la camioneta es: \(camionetaDescripcion)")

//Uso de setter y getter
class CamionetaTrabajo: Camioneta {
    var toneladas: Double = 0.0
    
    var toneladasCarga: Double {
        get {
            return toneladas
        }
        set {
            toneladas = newValue
        }
    }
}

var camion = CamionetaTrabajo(tipo: "Carga", color: "Azul", puertas: 2)
camion.toneladasCarga = 5
let toneladasCamion = camion.toneladasCarga
print("Las toneladas de carga del camion son \(toneladasCamion)")

//Concurrencia
print("Inicia modulo de concurrencia")
func fetchUserID(from server: String) async -> Int {
    if server == "primary" {
        return 97
    }
    return 501
}

func fetchUsername(from server: String) async -> String {
    let userID = await fetchUserID(from: server)
    if userID == 501 {
        return "John Doe"
    }
    return "Guest"
}

func connectUser(to server: String) async {
    async let userID = fetchUserID(from: server)
    async let username = fetchUsername(from: server)
    let greeting = await "Hello \(username), user ID \(userID)"
    print("El valor de greeting es \(greeting)")
    print(greeting)
}

//No espera su respuesta
Task {
    await connectUser(to: "primary")
}
//Si espera su respuesta
await connectUser(to: "primary")

let userIDs = await withTaskGroup(of: Int.self) { group in
    for server in ["primary", "secondary", "development"] {
        group.addTask {
            return await fetchUserID(from: server)
        }
    }
    var results: [Int] = []
    for await result in group {
        results.append(result)
    }
    return results
}

print("Los ID son \(userIDs)")

//Actors
actor ServerConnection {
    var server: String = "primary"
    private var activesers: [Int] = []
    func connect() async -> Int {
        let userID = await fetchUserID(from: server)
        //Communicate with server
        activesers.append(userID)
        return userID
    }
}

let server = ServerConnection()
let usuarioID = await server.connect()
print("Usuario ID \(usuarioID)")
