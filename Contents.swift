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


// Día 6 – Bucles, resumen y punto de control 3


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
var roll = 0

// sigue dando vueltas hasta llegar a 20
while roll != 20 {
    // tira un dado nuevo e imprime lo que era
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")
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
