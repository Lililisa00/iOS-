//константы, переменные и типы данных
//1
var intVar = 2
let intLet = -3

var uintVar: UInt = 10
let uintLet: UInt = 5

var floatVar: Float = 5.5
let floatLet: Float = 23.4

var doubleVar = 4.673
let doubleLet = 562.266

var stringVar = "pupupu"
let stringLet = "tututu"

print("min Int number: \(Int.min), max Int number: \(Int.max)")
print("min UInt number: \(UInt.min), max UInt number: \(UInt.max)")
print("min Float number: \(-Float.greatestFiniteMagnitude), max Float number: \(Float.greatestFiniteMagnitude)")
print("min Double number: \(Double.greatestFiniteMagnitude), max Double number: \(Double.greatestFiniteMagnitude)")

//2
typealias dog = String
typealias weight = Double
let dog1: dog = "Bobik"
let weight1: weight = 10.3
let dog2: dog = "Tuzik"
let weight2: weight = 5.8
let dog3: dog = "Sharik"
let weight3: weight = 4.5

print("Dog \(dog1) weights \(weight1) kilos")
print("Dog \(dog2) weights \(weight2) kilos")
print("Dog \(dog3) weights \(weight3) kilos")

//3
var intNumber = 3
var doubleNumber = 4.0
var stringNumber = "111"
var intToDouble: Double = Double(intNumber)
var intToFloat: Float = Float(intNumber)
var doubleToInt: Int = Int(doubleNumber)
var stringToInt: Int? = Int(stringNumber)
var intToString: String = String(intNumber)

//4
print("enter first number: ")
var firstNumber = Double(readLine() ?? "") ?? 0
print("enter the operator: ")
var operation = String(readLine() ?? "")
print("enter second number: ")
var secondNumber = Double(readLine() ?? "") ?? 0
var result: Double?

switch operation {
case "+":
    result = firstNumber + secondNumber
case "-":
    result = firstNumber - secondNumber
case "*":
    result = firstNumber * secondNumber
case "/" where secondNumber != 0:
    result = firstNumber / secondNumber
default:
    print("wrong oparetor or division by 0")
}

if let result = result {
    print("\(firstNumber) \(operation) \(secondNumber) = \(result)")
} else {
    print("no result")
}

//5
print("enter your cat's name: ")
let catName = readLine() ?? "sobaka"
print("your cat's name is \(catName)")

//строки
//1
let name = "Alisa"
let surename = "Spritulo"
let age = "18"
let city = "Minsk"

//2
print("My name is \(name) \(surename). I am \(age) years old. I live in \(city).")

//3
let line1 = "This is 1 line"
let line2 = "This is 2 line"
let line3 = "This is 3 line"
let line4 = "This is 4 line"
let line5 = "This is 5 line"
let line6 = "This is 6 line"
let line7 = "This is 7 line"
let line8 = "This is 8 line"
let line9 = "This is 9 line"
let line10 = "This is 10 line"

let message = "\(line1)\n\t\(line2)\n\(line3)\n\t\(line4)\n\(line5)\n\(line6)\n\t\(line7)\n\(line8)\n\(line9)\n\t\(line10)"
print(message)

//4
for char in name {
    print(char)
}

//5
var num = 3
var str = "apples"
let msg = String(num) + " " + str
print(msg)

//массивы
//1
var students = [
    "Lesha", "Ivan", "Dima", "Max", "Artur", "Sergei",
    "Egor", "Vlad", "Roma", "Andrey", "Petya", "Nikita"
]

students.append("Masha")
students.append("Dasha")
students.append("Sasha")
students.insert("Anna", at: 0)
students.insert("Katya", at: 1)
students.insert("Ksyusha", at: 2)
students.insert("Ira", at: 3)

print(students)

students.removeSubrange(0...1)
students.removeSubrange(2...8)

print("students after removal:  \(students)")

//4
let badMarks = [0, 1, 2, 3, 4, 5]
let goodMarks = [6, 7, 8, 9, 10]
let marks = badMarks + goodMarks

print("\(students[0]) - \(marks[9]). pupupu")
print("\(students[1]) - \(marks[8]). pupupu")
print("\(students[2]) - \(marks[7]). pupupu")
print("\(students[3]) - \(marks[6]). pupupu")
print("\(students[4]) - \(marks[5]). pupupu")
print("\(students[5]) - \(marks[4]). pupupu")
print("\(students[6]) - \(marks[3]). pupupu")
print("\(students[7]) - \(marks[2]). pupupu")
print("\(students[8]) - \(marks[1]). pupupu")
print("\(students[9]) - \(marks[0]). pupupu")

//5
var money = [3, 5, 7, 10]
var amount = 0
for value in money {
    amount += value
}
print("\(amount) dollars")




            




