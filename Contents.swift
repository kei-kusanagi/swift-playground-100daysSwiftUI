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
