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


struct Employee {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0

//    var vacationRemaining: Int {
//        vacationAllocated - vacationTaken
//    }
    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }

        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
}
//
//var archer = Employee(name: "Sterling Archer", vacationAllocated: 14)
//archer.vacationTaken += 4
//print(archer.vacationRemaining)
//archer.vacationTaken += 4
//print(archer.vacationRemaining)


var archer = Employee(name: "Sterling Archer", vacationAllocated: 14)
archer.vacationTaken += 4
archer.vacationRemaining = 5
print(archer.vacationAllocated)


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

struct Car {

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
var myCar = Car(model: "Toyota Corolla", numberOfSeats: 5, currentGear: 3)
print("Marcha actual: \(myCar.getCurrentGear())")

myCar.shiftUp()
print("Marcha actual: \(myCar.getCurrentGear())")

myCar.shiftDown()
print("Marcha actual: \(myCar.getCurrentGear())")

