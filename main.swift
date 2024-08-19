import Foundation

// MARK: - Variables and Constants

// Variables are mutable (can be changed), while constants are immutable (cannot be changed).
// Declaring variables and constants with type inference
var variable = 20         // Type inferred as Int
let constant = 30         // Type inferred as Int

// Declaring variables and constants with explicit types
let name: String = "Tamim Hossain"   // Explicit type: String

// MARK: - Data Types

// Basic data types in Swift
let age: Int = 30              // Integer type
var money: Double = 200.30     // Double type (floating-point)
var bankMoney: Float = 202.4   // Float type (less precision than Double)
var countryName = "Bangladesh" // Type inferred as String
var isStudent: Bool = true     // Boolean type
var grades: Character         // Character type (single Unicode character)

// Arrays and their usage
var skillsArray: [String] = ["Java", "Kotlin", "Swift"]  // Array of Strings
var emptyArray: [Int] = []   // Empty Array of Ints

// MARK: - Dictionary

// Dictionary is a collection of key-value pairs
var dictionaryOfCountries: [String: String] = ["Bangladesh": "Dhaka"]

// MARK: - Set

// Set is an unordered collection of unique elements
var setOfFruits: Set<String> = ["Mango", "Banana", "Watermelon", "Papaya"]
setOfFruits.insert("Green Apple")  // Adding a new element to the set

// MARK: - Functions

// Function with a parameter and no return value
func printName(name: String) {
    print("Hello! \(name)")
}

// Function with parameters and a return value
func addTwoIntegers(with a: Int, by b: Int) -> Int {
    return a + b
}

// Calling functions
printName(name: "Tamim Hossain") // Prints: Hello! Tamim Hossain
let result = addTwoIntegers(with: 10, by: 20) // Adds 10 and 20
print(result) // Prints: 30

// MARK: - Control Flow

// if-else statement
let age2 = 18
if age2 == 21 {
    print("Welcome Tamim! Your age is \(age2)")
} else if age2 == 18 {
    print("You are just a teen")
} else {
    print("I don't know your age!")
}

// MARK: - Loops

// for loop: Iterating over a range of numbers
for num in 1...100 {
    print(num) // Prints numbers from 1 to 100
}

// for loop: Iterating over an array
for skill in skillsArray {
    print(skill) // Prints each skill in the skillsArray
}

// while loop: Printing numbers from 1 to 100
var c = 1
while c <= 100 {
    print(c)
    c += 1
}

// while loop: Printing elements from an array
var h = 0
while h < skillsArray.count {
    print(skillsArray[h])
    h += 1
}

// repeat-while loop: Printing elements from an array
var r = 0
repeat {
    print(skillsArray[r])
    r += 1
} while r < skillsArray.count

// MARK: - Enums

// Enum definition and usage
enum Days {
    case saturday, sunday, monday, tuesday, wednesday, thursday, friday
    
    // Computed property
    var isWeekend: Bool {
        switch self {
        case .saturday, .sunday: return true
        default: return false
        }
    }
    
    // Method
    func showDescription() -> String {
        switch self {
        case .saturday: return "Saturday"
        case .sunday: return "Sunday"
        case .monday: return "Monday"
        case .tuesday: return "Tuesday"
        case .wednesday: return "Wednesday"
        case .thursday: return "Thursday"
        case .friday: return "Friday"
        }
    }
}

let today = Days.friday
print("Today is \(today.showDescription())") // Prints: Today is Friday
print("Is today a weekend? \(today.isWeekend)") // Prints: Is today a weekend? false

// MARK: - Optionals

// Optionals allow a variable to hold a value or be nil
var isHacked: Bool? = false
print(isHacked!) // Force unwrap (dangerous if nil)

// Optional binding to safely unwrap optionals
var hacker: Bool? = true
if let h = hacker {
    print("Hacker detected")
} else {
    print("Value is nil")
}

// MARK: - Classes

// Class definition with initializers and methods
class MacBook {
    private var model: String?
    private var year: Int?
    private var ram: Int?
    private var storage: Int?
    private var processor: String?
    
    // Initializers
    init() { }
    init(model: String, year: Int, ram: Int, storage: Int, processor: String) {
        self.model = model
        self.year = year
        self.ram = ram
        self.storage = storage
        self.processor = processor
    }
    
    // Method to display specs
    func showSpecs() {
        print("It's a MacBook model \(model!) from \(year!). It has \(ram!)GB RAM and \(storage!)GB storage with a \(processor!) processor.")
    }
}

// Subclassing and overriding methods
class MacMini: MacBook {
    override func showSpecs() {
        print("Hello! It's a Mac Mini.")
    }
}

// Creating and using objects
let macbook = MacBook(model: "A2020", year: 2020, ram: 8, storage: 256, processor: "M1")
macbook.showSpecs() // Prints specs of the MacBook

let macmini = MacMini(model: "B2021", year: 2021, ram: 16, storage: 512, processor: "M2")
macmini.showSpecs() // Prints: Hello! It's a Mac Mini.

// MARK: - Structs

// Struct definition
struct Computer {
    var cpu: String?
    var ram: String?
    var monitor: String?
    
    // Method to display specs
    func showSpecs() {
        print("The computer has a \(cpu!) CPU, \(ram!) RAM, and a \(monitor!) monitor.")
    }
}

// Creating and using structs
let computer = Computer(cpu: "Intel I5 13600KF", ram: "8 GB", monitor: "Xiaomi")
computer.showSpecs() // Prints specs of the computer

// MARK: - Extensions

// Adding a new method to the String type
extension String {
    func hack() -> String {
        return "Your String has been hacked!"
    }
}

// Using the extension method
var nameOfDog = "Mr. Hacker"
print(nameOfDog.hack()) // Prints: Your String has been hacked!
