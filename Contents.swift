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
