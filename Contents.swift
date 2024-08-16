import Cocoa

let tempCentigrados:Double = 25.0

var tempFarenheit:Double = ((tempCentigrados * 9)/5)+32

print("\(tempCentigrados)° Centigrados son \(tempFarenheit)° Farenheit")


let actors = Set(["Denzel Washintong", "Tom Cruise", "Nicolas Cage", "Samuel l Jakson"])
print(actors)

var people = Set<String>()
people.insert("Denzel Washington")
people.insert("Tom Cruise")
people.insert("Nicolas Cage")
people.insert("Samuel L Jackson")

print(people)


enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

var day = Weekday.wednesday

print(day)
enum UIStyle {
    case light, dark, system
}


var style: UIStyle = UIStyle.light

style = .dark


let username: String

username = "@kei_kusanagi"

print(username)


let colores = ["red", "orange", "blue", "purpure", "green", "cyan"]
print(colores)
print(colores.count)

Set(colores)
print(colores)

let score = 85

if score > 80 {
    print("Great job!")
}



var numbers = [1, 2, 3]

numbers.append(4)

numbers.append(5)

if numbers.count > 3 {

    numbers.remove(at: 0)
    numbers.remove(at: 0)
}


print(numbers)

let userAge = 14
let hasParentalConsent = true

if userAge >= 18 || hasParentalConsent {
    print("You can buy the game!")
}


enum TransporOption {
    case airplane, helicopter, bicycle, car, scooter
}

let transport = TransporOption.airplane

if transport == .airplane || transport == .helicopter {
    print("Let's fly!")
} else if transport == .bicycle{
    print("I hope there;s a bike path...")
} else if transport == .car{
    print("Time to get stuck in traffic.")
} else {
    print("I'm going to hire a scooter now")
}


let hour = 23
print(hour < 12 ? "It's before noon" : "It's after noon")


enum Theme {
    case light, dark
}
let theme = Theme.dark

let background = theme == .dark ? "black" : "white"
print(background)


/// Día 6 – Bucles, resumen y punto de control 3


let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works great on \(os).")
}

for bucleKeiKusanagi in platforms {
    print("Swift works great on \(bucleKeiKusanagi).")
}


for i in 1...10 {
    print("7 x \(i) is \(7 * i)")
}

for i in 0...10 {
    print()
    print("la tabla del \(i):")

    for j in 0...10 {
        print("  \(i) x \(j) es \(j * i)")
    }

    
}


for i in 1...5 {
    print("Contar de forma continua del 1 al 5: \(i)")
}

print()

for i in 1..<5 {
    print("Contar del 1 a antes del 5: \(i)")
}


var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " hate"
}

print(lyric)


// Bucle While


var countdown = 10

while countdown > 0 {
    print("\(countdown)…")
    countdown -= 1
}

print("Rocketo PUNCH!!!!")


let id = Int.random(in: 1...1000)

let amount = Double.random(in: 0...1)


// ejemplo dados con bucle while

// crea un número entero para almacenar nuestro rol
var roll1 = 0

// sigue dando vueltas hasta llegar a 20
while roll1 != 20 {
    // tira un dado nuevo e imprime lo que era
    roll1 = Int.random(in: 1...20)
    print("I rolled a \(roll1)")
}

// si estamos aquí significa que el ciclo termino: ¡obtuvimos un 20!
print("Critical hit!")


// como omitir elementos del bucle con pausa y continuar
let filenames = ["me.jpg", "work.txt", "sophie.jpg", "logo.psd"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }

    print("Found picture: \(filename)")
}



let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)

        if multiples.count == 20 {
            break
        }
    }
}

print(multiples)


/// Día 7 – Funciones, parámetros y valores de retorno


print("¡Bienvenido a mi aplicación!")
print("De forma predeterminada, esta imprime una conversión")
print("de centímetros a pulgadas, pero tú")
print("también puede establecer un rango personalizado si lo deseas.")

func showWelcome(){
    print("¡Bienvenido a mi aplicación!")
    print("De forma predeterminada, esta imprime una conversión")
    print("de centímetros a pulgadas, pero tú")
    print("también puede establecer un rango personalizado si lo deseas.")
}

showWelcome()
showWelcome()


let number = 100

if number.isMultiple(of: 2) {
    print("Even")
} else {
    print("Odd")
}


let roll = Int.random(in: 1...20)

//let roll = Int.random()


//func printTimesTables(number: Int, end: Int) {
//    for i in 1...end {
//        print("\(number) x \(i) = \(i * number)")
//    }
//}
//
//printTimesTables(number: 5, end: 20)


// Cómo devolver valores de funciones

let root = sqrt(169)
print(root)

func rollDice() -> Int {
    return Int.random(in: 1...6)
}

//let result = rollDice()
//print(result)

print(rollDice())


func comparacion(cadena1: String, cadena2: String)-> Bool{

    let cadena1 = convertirArray(cadena: cadena1)
    let cadena2 = convertirArray(cadena: cadena2)
    if (cadena1==cadena2){
        return true
    } else {
        return false
    }
    
    
}


func convertirArray(cadena: String) -> String{
    let caracteres = Array(cadena)
    let caracteresOrdenados = caracteres.sorted()
    let cadenaOrdenada = String(caracteresOrdenados)
    return cadenaOrdenada
}

comparacion(cadena1: "abc", cadena2: "cba")


/// bueno esa fue mi solucion, la del curso fue esta, lo que se diferencio es que segun yo devia convertirlos en array, pero bueno de menos ya practique como usar una funcion dentro de otra jajaja :p

//func areLettersIdentical(string1: String, string2: String) -> Bool {
//    let first = string1.sorted()
//    let second = string2.sorted()
//    return first == second
//}

/// y s epodria hacr aun mas corto con

func areLettersIdentical(string1: String, string2:String) -> Bool{
    return string1.sorted() == string2.sorted()
}

/// y si la funcion solo tiene una liena de codigo podemos omit el return y solo dejarlo

func areLettersIdentical2(string1: String, string2:String) -> Bool{
    string1.sorted() == string2.sorted()
}

areLettersIdentical(string1: "abc", string2: "cba")

areLettersIdentical2(string1: "abc", string2: "cba")


func pythagoras(a: Double, b: Double) -> Double {
    let input = a * a + b * b
    let root = sqrt(input)
    return root
}

let c = pythagoras(a: 3, b: 4)
print(c)

// ahora como prueba nos pone a reducirlo a una sola linea pa quitar el return, segun yo es asi

func pythagorasshort(a: Double, b: Double) -> Double {
    sqrt(a * a + b * b)
}

print(pythagoras(a: 3, b: 4))


/// Cómo devolver múltiples valores de funciones


//func getUser() -> (firstName: String, lastName: String) {
//    (firstName: "Taylor", lastName: "Swift")
//}
//
//let user = getUser()
//print("Name: \(user.firstName) \(user.lastName)")


//func getUser() -> (String, String) {
//    ("Taylor", "Swift")
//}
//
//let user = getUser()
//print("Name: \(user.0) \(user.1)")

func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}
//
//let user = getUser()
//let firstName = user.firstName
//let lastName = user.lastName

let (firstName, lastName) = getUser()
print("Name: \(firstName) \(lastName)")


/// Cómo personalizar etiquetas de parámetros


let lyric1 = "I see a red door and I want it painted black"
print(lyric1.hasPrefix("I see"))


//func isUppercase(string: String) -> Bool {
//    string == string.uppercased()
//}
//
//let string = "HELLO, WORLD"
//let result = isUppercase(string: string)

func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let result = isUppercase(string)


/// Día 8 : valores predeterminados, funciones de lanzamiento y punto de control 4


func printTimesTables(for number: Int, end: Int = 10) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5, end: 20)
printTimesTables(for: 8)


var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)
characters.removeAll()
print(characters.count)

characters.removeAll(keepingCapacity: true)

// Cómo manejar errores en funciones

enum PasswordError: Error {
    case short, obvious
}


func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }

    if password == "12345" {
        throw PasswordError.obvious
    }

    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}


//try checkPassword("hola")
// esto nos regreso 
//>Playground execution terminated: An error was thrown and was not caught:
//__lldb_expr_21.PasswordError.short

let cadena = "12345"

do {
    let result = try checkPassword(cadena)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.\(error.localizedDescription)")
}

/// Punto de control 4
///El desafío es este: escribir una función que acepte un número entero del 1 al 10,000 y devuelva la raíz cuadrada entera de ese número. Suena fácil, pero hay algunos inconvenientes:

///- No puedes usar la función incorporada de Swift sqrt()o similar; necesitas encontrar la raíz cuadrada tú mismo.
///- Si el número es menor que 1 o mayor que 10,000, debería generar un error de "fuera de límites".
///- Solo debes considerar raíces cuadradas enteras; no te preocupes si la raíz cuadrada de 3 es 1,732, por ejemplo.
///- Si no puede encontrar la raíz cuadrada, arroja un error de "sin raíz".


enum RaizCuadradaError: Error {
    case fueraDeLimites
    case sinRaiz
}

func raizCuadrada(_ numero: Int) throws -> Int {
    guard numero >= 1 && numero <= 10000 else {
        throw RaizCuadradaError.fueraDeLimites
    }

    for i in 1...100 {
        if i * i == numero {
            return i
        }
    }

    throw RaizCuadradaError.sinRaiz
}



do {
    let resultado = try raizCuadrada(10000)
    print("La rais cuadrada entera es \(resultado)")
} catch RaizCuadradaError.fueraDeLimites {
    print("El numero está fuera de los límites permitidos.")
} catch RaizCuadradaError.sinRaiz {
    print("No se encontro una raiz cuadrada entera.")
} catch {
    print("Ocurrio un error inesperado: \(error).")
}


/// Day 9 – Closures, passing functions into functions, and checkpoint 5

//func greetUser() {
//    print("Hi there!")
//}
//
//greetUser()
//
//var greetCopy = greetUser
//greetCopy()

//let decirHola = {
//    print("holaaaa")
//}
//
//decirHola()

let decirHola = { (name: String) -> String in
    "Hola \(name)"
}

print(decirHola("Juancho"))

func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData
let user = data(1989)
print(user)


let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)


//func captainFirstSorted(name1: String, name2: String) -> Bool {
//    if name1 == "Suzanne" {
//        return true
//    } else if name2 == "Suzanne" {
//        return false
//    }
//
//    return name1 < name2
//}
//
//let captainFirstTeam = team.sorted(by: captainFirstSorted)
//print(captainFirstTeam)

//let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
//    if name1 == "Suzanne" {
//        return true
//    } else if name2 == "Suzanne" {
//        return false
//    }
//
//    return name1 < name2
//})


//
//let captainFirstTeam = team.sorted { name1, name2 in
//    if name1 == "Suzanne" {
//        return true
//    } else if name2 == "Suzanne" {
//        return false
//    }
//
//    return name1 < name2
//}
//

let captainFirstTeam = team.sorted {
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false
    }

    return $0 < $1
}

print(captainFirstTeam)

let tOnly = team.filter { $0.hasPrefix("T") }
print(tOnly)


let uppercaseTeam = team.map { $0.uppercased() }
print(uppercaseTeam)



func greetUser() {
    print("Hi there!")
}

greetUser()

var greetCopy: () -> Void = greetUser
greetCopy()



func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()

    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }

    return numbers
}


let rolls = makeArray(size: 50) {
    Int.random(in: 1...20)
}

print(rolls)


func generateNumber() -> Int {
    Int.random(in: 1...20)
}

let newRolls = makeArray(size: 50, using: generateNumber)
print(newRolls)


func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done!")
}


let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]


let resultado = luckyNumbers
    .filter { (number: Int) -> Bool in
        return !number.isMultiple(of: 2)
    }
    .sorted { (first: Int, second: Int) -> Bool in
        return first < second
    }
    .map { (number: Int) -> String in
        return "\(number) is a lucky number"
    }

resultado.forEach { (line: String) in
    print(line)
}


/// Día 10 : estructuras, propiedades calculadas y observadores de propiedades
///

struct Album {
    let title: String
    let artist: String
    let year: Int

    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}


let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
let wings = Album(title: "Wings", artist: "BTS", year: 2016)

print(red.title)
print(wings.artist)

red.printSummary()
wings.printSummary()


//struct Employee {
//    let name: String
//    var vacationRemaining: Int
////    func takeVacation(days: Int) {
//    mutating func takeVacation(days: Int) {
//        if vacationRemaining > days {
//            vacationRemaining -= days
//            print("I'm going on vacation!")
//            print("Days remaining: \(vacationRemaining)")
//        } else {
//            print("Oops! There aren't enough days remaining.")
//        }
//    }
//}

//
//var archer = Employee(name: "Sterling Archer", vacationRemaining: 14)
//archer.takeVacation(days: 5)
//print(archer.vacationRemaining)
//
//
//var archer1 = Employee(name: "Sterling Archer", vacationRemaining: 14)
//var archer2 = Employee.init(name: "Sterling Archer", vacationRemaining: 14)


/// Cómo calcular los valores de las propiedades dinámicamente
///


//struct Employee {
//    let name: String
//    var vacationRemaining: Int
//}
//
//var archer = Employee(name: "Sterling Archer", vacationRemaining: 14)
//archer.vacationRemaining -= 5
//print(archer.vacationRemaining)
//archer.vacationRemaining -= 3
//print(archer.vacationRemaining)


//struct Employee {
//    let name: String
//    var vacationAllocated = 14
//    var vacationTaken = 0

//    var vacationRemaining: Int {
//        vacationAllocated - vacationTaken
//    }
//    var vacationRemaining: Int {
//        get {
//            vacationAllocated - vacationTaken
//        }
//
//        set {
//            vacationAllocated = vacationTaken + newValue
//        }
//    }
//}
//
//var archer = Employee(name: "Sterling Archer", vacationAllocated: 14)
//archer.vacationTaken += 4
//print(archer.vacationRemaining)
//archer.vacationTaken += 4
//print(archer.vacationRemaining)
//
//
//var archer = Employee(name: "Sterling Archer", vacationAllocated: 14)
//archer.vacationTaken += 4
//archer.vacationRemaining = 5
//print(archer.vacationAllocated)


///  Día 11 – Control de acceso, propiedades y métodos estáticos y punto de control 6
///Cómo limitar el acceso a datos internos mediante el control de acceso

//struct BankAccount {
//    var funds = 0
//
//    mutating func deposit(amount: Int) {
//        funds += amount
//    }
//
//    mutating func withdraw(amount: Int) -> Bool {
//        if funds >= amount {
//            funds -= amount
//            return true
//        } else {
//            return false
//        }
//    }
//}
//
//
//var miCuenta = BankAccount()
//
//print(miCuenta.funds)
//
//miCuenta.deposit(amount: 30000)
//let success = miCuenta.withdraw(amount: 200)
//
//if success {
//    print("Withdrew money successfully")
//} else {
//    print("Failed to get the money")
//}
//print(miCuenta.funds)
//print(success)
//
//miCuenta.funds += 10000000000000
//print(miCuenta.funds)


struct BankAccount {
    // Añadimos private
    private var funds = 0

    mutating func deposit(amount: Int) {
        funds += amount
    }

    mutating func withdraw(amount: Int) -> Bool {
        if funds >= amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}


var miCuenta = BankAccount()

// ya no me deja acceder a los fondos
//print(miCuenta.funds)

miCuenta.deposit(amount: 30000)
let success = miCuenta.withdraw(amount: 200)

if success {
    print("Withdrew money successfully")
} else {
    print("Failed to get the money")
}
//print(miCuenta.funds)
print(success)

//miCuenta.funds += 10000000000000
//print(miCuenta.funds)


struct datosTakeshi{
    static let raza = "electrico proque es bien corriente"
    static var comidaFav = "Nupec"
    static let horasSueno = 18
}


print(datosTakeshi.comidaFav)
datosTakeshi.comidaFav = "sobresitos"

print(datosTakeshi.comidaFav)


struct School {
    static var studentCount = 0

    static func add(student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
}

School.add(student: "Taylor Swift")
print(School.studentCount)


struct AppData {
    static let version = "1.3 beta 2"
    static let saveFilename = "settings.json"
    static let homeURL = "https://www.hackingwithswift.com"
}


struct Employee2 {
    let username: String
    let password: String

    static let example = Employee2(username: "cfederighi", password: "hairforceone")
}
struct Unwrap {
    static let appURL = "https://itunes.apple.com/app/id1440611372"
}

//static var entropy = Int.random(in: 1...1000)
//
//static func getEntropy() -> Int {
//    entropy += 1
//    return entropy
//}
//private static var entropy = Int.random(in: 1...1000)


///Punto de control 6

struct Car1 {

    let model: String
    let numberOfSeats: Int
    

    private var currentGear: Int
    

    init(model: String, numberOfSeats: Int, currentGear: Int = 1) {
        self.model = model
        self.numberOfSeats = numberOfSeats
        

        if currentGear >= 1 && currentGear <= 10 {
            self.currentGear = currentGear
        } else {
            self.currentGear = 1
        }
    }
    

    mutating func shiftUp() {
        if currentGear < 10 {
            currentGear += 1
        } else {
            print("Ya estás en la marcha más alta.")
        }
    }
    
    // Método para cambiar la marcha hacia abajo
    mutating func shiftDown() {
        if currentGear > 1 {
            currentGear -= 1
        } else {
            print("Ya estás en la marcha más baja.")
        }
    }
    
    // Método para obtener la marcha actual (pública)
    func getCurrentGear() -> Int {
        return currentGear
    }
}

// Uso de la estructura
var myCar = Car1(model: "Toyota Corolla", numberOfSeats: 5, currentGear: 3)
print("Marcha actual: \(myCar.getCurrentGear())")

myCar.shiftUp()
print("Marcha actual: \(myCar.getCurrentGear())")

myCar.shiftDown()
print("Marcha actual: \(myCar.getCurrentGear())")


/// Day 12 – Classes, inheritance, and checkpoint 7
///
//Cómo crear tus propias clases


class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var newGame = Game()
print(newGame.score)
newGame.score += 10

//Cómo hacer que una clase herede de otra

class Employee3{
    let hours: Int
    
    init(hours: Int){
        self.hours = hours
    }
    func printSummary() {
        print("I work \(hours) hours a day.")
    }
}

class Developer: Employee3 {
    func work() {
        print("I'm writing code for \(hours) hours.")
    }
    override func printSummary() {
        print("I'm a developer who will sometimes work \(hours) hours a day, but other times spend hours arguing about whether code should be indented using tabs or spaces.")
    }
}

class Manager: Employee3 {
    func work() {
        print("I'm going to meetings for \(hours) hours.")
    }
}


let robert = Developer(hours: 8)
let joseph = Manager(hours: 10)
robert.work()
joseph.work()

let novall = Developer(hours: 8)
novall.printSummary()


// Cómo agregar inicializadores para clases

class Vehicle1 {
    let isElectric: Bool

    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Carro: Vehicle1 {
    let isConvertible: Bool

    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}

let teslaX = Carro(isElectric: true, isConvertible: false)


// Cómo copiar clases


//class User {
//    var username = "Anonymous"
//}


var user1 = User()

print(user1.username)

var user2 = user1
user2.username = "Taylor"

print(user1.username)
print(user2.username)


class User {
    var username = "Anonymous"

    func copy() -> User {
        let user = User()
        user.username = username
        return user
    }
}


// Cómo crear un desinicializador para una clase


class User2 {
    let id: Int

    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }

    deinit {
        print("User \(id): I'm dead!")
    }
}

var usuario = User2(id:234)
print(usuario.id)

for i in 1...3 {
    let user = User2(id: i)
    print("User \(user.id): I'm in control!")
}


var users = [User2]()

for i in 1...3 {
    let user = User2(id: i)
    print("User \(user.id): I'm in control!")
    users.append(user)
}

print("Loop is finished!")
users.removeAll()
print("Array is clear!")


// Cómo trabajar con variables dentro de clases


class User3 {
    var name = "Paul"
}

let newUser = User3()
newUser.name = "Taylor"
print(newUser.name)


var newUser1 = User3()
newUser1.name = "Taylor"
newUser1 = User3()
print(newUser1.name)


//Punto de control 7

class Animal{
    let patas: Int = 4
    
}

class Dog: Animal {
    func speak() {
        print("Woof woof soy un perro!")
    }
}

class Cat: Animal {
    let Domesticable: Bool
    
    init(Domesticable: Bool) {
        self.Domesticable = Domesticable
    }
    
    func speak() {
        print("Miau asi es!")
    }
}

class Corgi: Dog {
    override func speak() {
        print("Woof! Soy un Corgi!")
    }
}

class Poodle: Dog {
    override func speak() {
        print("Woof! Soy un Poodle!")
    }
}

class Persian: Cat {
    override func speak() {
        print("Meow! Soy un gato Persa!")
    }
}

class Lion: Cat {
    override func speak() {
        print("Roar! Soy un Leon!")
    }
}


let corgi = Corgi()
corgi.speak()

let poodle = Poodle()
poodle.speak()

let persian = Persian(Domesticable: true)
persian.speak()

let lion = Lion(Domesticable: false)
lion.speak()


/// Día 13 – Protocolos, extensiones y punto de control 8
///
///
protocol Vehicle {
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}


struct Car: Vehicle {
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }

    func travel(distance: Int) {
        print("I'm driving \(distance)km.")
    }

    func openSunroof() {
        print("It's a nice day!")
    }
}

func commute(distance: Int, using vehicle: Vehicle) {
//func commute(distance: Int, using vehicle: Car) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow! I'll try a different vehicle.")
    } else {
        vehicle.travel(distance: distance)
    }
}

let car = Car()
commute(distance: 100, using: car)


struct Bicycle: Vehicle {
    func estimateTime(for distance: Int) -> Int {
        distance / 10
    }

    func travel(distance: Int) {
        print("I'm cycling \(distance)km.")
    }
}

let bike = Bicycle()
commute(distance: 50, using: bike)

protocol Vehicle2 {
    var name: String { get }
    var currentPassengers: Int { get set }
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}
//let name = "Car"
//var currentPassengers = 1
//
//let name = "Bicycle"
//var currentPassengers = 1
//
//
//let name = "Bicycle"
//var currentPassengers = 1

//func getTravelEstimates(using vehicles: [Vehicle], distance: Int) {
//    for vehicle2 in vehicles {
//        let estimate = vehicle2.estimateTime(for: distance)
//        print("\(vehicle2.name): \(estimate) hours to travel \(distance)km")
//    }
//}

// Cómo utilizar tipos de devolución opacos

//func getRandomNumber() -> Int {
//    Int.random(in: 1...6)
//}
//
//func getRandomBool() -> Bool {
//    Bool.random()
//}

func getRandomNumber() -> some Equatable {
    Int.random(in: 1...6)
}

func getRandomBool() -> some Equatable {
    Bool.random()
}


getRandomNumber()
getRandomBool()
print(getRandomNumber() == getRandomNumber())



//Cómo crear y usar extensiones
var quote = "   The truth is rarely pure and never simple   "
//let trimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines)

extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}

let trimmed = quote.trimmed()


let lyrics = """
But I keep cruising
Can't stop, won't stop moving
It's like I got this music in my mind
Saying it's gonna be alright
"""

print(lyrics.lines.count)


struct Book {
    let title: String
    let pageCount: Int
    let readingHours: Int
}
//
//let lotr = Book(title: "Lord of the Rings", pageCount: 1178, readingHours: 24)
//

//struct Book{
//    let title: String
//    let pageCount: Int
//    let readingHours: Int
//    
//    init(title: String, pageCount: Int){
//        self.title = title
//        self.pageCount = pageCount
//        self.readingHours = pageCount / 50
//        
//    }
//}
//

extension Book {
    init(title: String, pageCount: Int) {
        self.title = title
        self.pageCount = pageCount
        self.readingHours = pageCount / 50
    }
}

let lotr = Book(title: "Lord of the Rings", pageCount: 1178, readingHours: 24)
//Book(title: <#T##String#>, pageCount: <#T##Int#>)


//Cómo crear y utilizar extensiones de protocolo

//extension Array {
//    var isNotEmpty: Bool {
//        isEmpty == false
//    }
//}
//
//
//
//let guests = ["Mario", "Luigi", "Peach"]
//
////if guests.isEmpty == false {
////if !guests.isEmpty {
//if guests.isNotEmpty {
//    print("Gest count: \(guests.count)")
//}
extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

let guests = ["Mario", "Luigi", "Peach"]

if guests.isNotEmpty {
    print("Gest count: \(guests.count)")
}

protocol Person {
    var name: String { get }
    func sayHello()
}

extension Person {
    func sayHello() {
        print("Hi, I'm \(name)")
    }
}

struct Employee: Person {
    let name: String
}

let taylor = Employee(name: "Taylor Swift")
taylor.sayHello()


/// Punto de control 8
///


protocol Building {
    var numberOfRooms: Int { get set }
    var cost: Int { get set }
    var realtorName: String { get set }
    
    func salesSummary()
}


struct House: Building {
    var numberOfRooms: Int
    var cost: Int
    var realtorName: String
    
    func salesSummary() {
        print("Esta casa tiene \(numberOfRooms) habitaciones, cuesta $\(cost), y está siendo vendida por \(realtorName).")
    }
}

struct Office: Building {
    var numberOfRooms: Int
    var cost: Int
    var realtorName: String
    
    func salesSummary() {
        print("Esta oficina tiene \(numberOfRooms) habitaciones, cuesta $\(cost), y está siendo vendida por \(realtorName).")
    }
}


let myHouse = House(numberOfRooms: 4, cost: 350000, realtorName: "Juanito Robledo")
myHouse.salesSummary()

let myOffice = Office(numberOfRooms: 10, cost: 1000000, realtorName: "Karen Anastacia")
myOffice.salesSummary()

/// Día 14 : Opcionales, fusión nula y punto de control 9
///

let opposites = [
    "Mario" : "Wario",
    "Luigi":"Waluigi"
]

let peachOpposite = opposites["Peach"]

if let marioOpposite = opposites["Mario"] {
    print("Mario's opposite is \(marioOpposite)")
}

var username1: String? = nil

if let unwrappedName = username1{
    print("We got a user: \(unwrappedName)")
} else {
    print("The optional was empty.")
}

func square(number: Int) -> Int {
    number * number
}
//
//var number3: Int? = nil
//print(square(number: number3))


/// Cómo desenvolver opcionales con guardia
///
///
///
//func printSquare(of number: Int?) {
//    guard let number = number else {
//        print("Missing input")
//        return
//    }
//
//    print("\(number) x \(number) is \(number * number)")
//}

//var myVar: Int? = 3
//
//if let unwrapped = myVar {
//    print("Run if myVar has a value inside")
//}
//
//guard let unwrapped = myVar else {
//    print("Run if myVar doesn't have a value inside")
//}

func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")

        // 1: We *must* exit the function here
        return
    }

    // 2: `number` is still available outside of `guard`
    print("\(number) x \(number) is \(number * number)")
}


/// Cómo desenvolver opciones opcionales con fusión nula
///
///
let captains = [
    "Enterprise": "Picard",
    "Voyager": "Janeway",
    "Defiant": "Sisko"
]

//let new = captains["Serenity"]

//let new = captains["Serenity"] ?? "N/A"

let new = captains["Serenity", default: "N/A"]

let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favorite = tvShows.randomElement() ?? "None"


struct Book1 {
    let title: String
    let author: String?
}

let book = Book1(title: "Beowulf", author: nil)
let author = book.author ?? "Anonymous"
print(author)


let input = ""
let number4 = Int(input) ?? 0
print(number4)


/// Cómo manejar múltiples opciones usando encadenamiento opcional


let names = ["Arya", "Bran", "Robb", "Sansa"]

let chosen = names.randomElement()?.uppercased() ?? "No one"
print("Next in line: \(chosen)")


struct Book2 {
    let title: String
    let author: String?
}

var book2: Book2? = nil
let author2 = book2?.author?.first?.uppercased() ?? "A"
print(author)


/// Cómo manejar fallas de funciones con opciones
///
/// 
enum UserError: Error {
case badID, networkFailed
}

func getUser(id: Int) throws -> String {
throw UserError.networkFailed
}

if let user = try? getUser(id: 23) {
print("User: \(user)")
}


let user4 = (try? getUser(id: 23)) ?? "Anonymous"
print(user4)


///Punto de control 9
///


func randomNumber(from numbers: [Int]?) -> Int {
    numbers?.randomElement() ?? Int.random(in: 1...100)
}


// Caso 1: Array no nulo con varios números
let numbers1: [Int]? = [10, 20, 30, 40, 50]
// Debería imprimir un número aleatorio del array
print(randomNumber(from: numbers1))

// Caso 2: Array vacío
let numbers2: [Int]? = []
// Debería imprimir un número aleatorio entre 1 y 100
print(randomNumber(from: numbers2))

// Caso 3: Array nulo
let numbers3: [Int]? = nil
// Debería imprimir un número aleatorio entre 1 y 100
print(randomNumber(from: numbers3))
