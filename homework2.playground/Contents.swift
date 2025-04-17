//кортежи
//1
let Alisa = (age: 18, height: 178, friend: "Sasha")
print("Alisa's age - \(Alisa.age)\nAlisa's height - \(Alisa.height)\nAlisa's friend - \(Alisa.friend)")
print(
    """
    Alisa's age - \(Alisa.0)
    Alisa's height - \(Alisa.1)
    Alisa's friend - \(Alisa.2)
    """
)
let (age, height, friend) = Alisa
print(
    """
    Alisa's age - \(age)
    Alisa's height - \(height)
    Alisa's friend - \(friend) 
    """
)

//2
var violators = (highSpeed: 20, drunkDriving: 10, noLicense: 30)
print(
    """
    превышение скорости - \(violators.highSpeed)
    вождение нетрезвым - \(violators.drunkDriving)
    бесправники - \(violators.noLicense)
    """
)

//3
var (highSpeed, drunkDriving, noLicense) = violators
print(
    """
    превышение скорости - \(violators.highSpeed)
    вождение нетрезвым - \(violators.1)
    бесправники - \(noLicense)
    """
)

//словари
//1
let monthsEng = [1: "January", 2: "February", 3: "March", 4: "April", 5: "May", 6: "June", 7: "July", 8: "August", 9: "September", 10: "October", 11: "November", 12: "December"]
let monthsRus = [1: "январь", 2: "февраль", 3: "март", 4: "апрель", 5: "май", 6: "июнь", 7: "июль", 8: "август", 9: "сентябрь", 10: "октябрь", 11: "ноябрь", 12: "декабрь"]
let capitals = ["France": "Paris", "Germany": "Berlin", "Belarus": "Minsk"]
let ages = ["Alisa": 18, "Sasha": 18, "Glasha": 25]
let fruitPrices = ["apple": 1.5, "banana": 0.9]
let isOnline = ["Anna": true, "Katya": false]
let grades = ["Math": 10, "History": 8]
let populations = ["Tokyo": 53566364, "New York": 64368732]
let temperatures = ["Monday": 18.5, "Tuesday": 20.0]
let userRoles = ["admin": "Alisa", "moderator": "Sasha"]

//2
for (monthNumber, monthName) in monthsEng {
    print("\(monthNumber) - \(monthName)")
}

for (monthNumber, monthName) in monthsRus {
    print("\(monthNumber) - \(monthName)")
}

print(capitals)
print(ages)
print(fruitPrices)
print(isOnline)
print(grades)
print(populations)
print(temperatures)
print(userRoles)

//3
var dict: [String: Int] = [:]
if dict.isEmpty {
    dict["Alisa"] = 18
}

//4
var cars = ["иномарка": "Toyota"]
cars["отечественная"] = "Лада"

for (key, value) in cars {
    print("\(key): \(value)")
}

print("only values: ")
for value in cars.values {
    print(value)
}

let removedValue = cars.removeValue(forKey: "иномарка")

cars["отечественная"] = nil

//циклы
let daysInMonths = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
for i in 1...12 {
    print("month \(i) - \(daysInMonths[i - 1])")
}

//2
var age1 = 18
switch age1 {
case 3...6:
    print("go to kindergarten")
case 7...17:
    print("go to school")
case 18...21:
    print("go to university")
case 22...65:
    print("go to job")
case 66...:
    print("retire")
default:
    print("i don't know")
}

if age1 >= 3 && age1 <= 6 {
    print("go to kindergarten")
} else if age1 >= 7 && age1 <= 17 {
    print("go to school")
} else if age1 >= 18 && age1 <= 21 {
    print("go to university")
} else if age1 >= 22 && age1 <= 65 {
    print("go to job")
} else if age1 >= 66 {
    print("retire")
} else {
    print("i don't know")
}

//3
let grade = 8
switch grade {
case 0...3:
    print("Bad")
case 4...5:
    print("Bad")
case 6...7:
    print("not bad")
case 8...9:
    print("good")
case 10...11:
    print("good")
case 12:
    print("excellent")
default:
    print("no grade")
}

if grade >= 0 && grade <= 3 {
    print("Bad")
} else if grade >= 4 && grade <= 5 {
    print("Bad")
} else if grade >= 6 && grade <= 7 {
    print("not bad")
} else if grade >= 8 && grade <= 9 {
    print("good")
} else if grade >= 10 && grade <= 11 {
    print("good")
} else if grade == 12 {
    print("excellent")
} else {
    print("no grade")
}

//4
for i in 0...200 {
    print("внешний цикл: \(i)")
    for j in 0..<16 {
            print("внутренний цикл: \(j)")
            if j == 15 {
                print("j = 15")
                break
            }
    }
}

//задачи
//1
import Foundation
/*
var N = Double(readLine() ?? "") ?? 0
var square = sqrt(N)
for i in 1...Int(square) {
        print(i * i)
    }
*/
//2
/*print("Enter A: ")
var A = Double(readLine() ?? "") ?? 0
print("Enter B: ")
var B = Double(readLine() ?? "") ?? 0
let (min, max) = A <= B ? (A, B) : (B, A)
for i in Int(ceil(min))...Int(floor(max)) {
    print(i * i * i)
}*/

//3
/*print("Enter n: ")
var n = Double(readLine() ?? "") ?? 0
print("Enter d: ")
var d = Double(readLine() ?? "") ?? 0
if floor(d) != d {
    print ("d must be int")
 exit(1)
}
var result = n
switch d {
case 2...:
    for i in 2...Int(d) {
        result *= n
    }
case 0 :
    result = 1
case ..<0:
    for i in Int(d)...0 {
        result *= 1 / n
    }
default:
    result = n
}*/

//4
for i in stride(from: -5, through: 5, by: 0.5) {
    print("\(i): y = 5 - x^2 / 2 = \(5 - i * i / 2)")
}

//5
/*for i in 20...30 {
    var number = i
    while number != 1 {
        number % 2 == 0 ? number / 2 : (number * 3 + 1) / 2
    }
}*/

//6
print("enter the number: ")
let input = readLine() ?? ""
if let number = Int(input) {
    let numberStr = String(abs(number))
    for char in numberStr {
            print(char)
    }
} else {
    print("not an integer")
}

//7
/*print("enter natural number: ")
var sum = 0
let n = readLine() ?? ""
if let nToInt = Int(n), nToInt > 0 {
    for digit in String(nToInt) {
        if let d = Int(String(digit)), d % 2 == 0 {
            sum += d
        }
    }
} else {
    print("couldn't find sum of even digits")
}*/

//8
/*print("enter number: ")
var even = 0
var uneven = 0
let n = readLine() ?? ""
if let nToInt = Int(n) {
    for digit in String(abs(nToInt)) {
        if let d = Int(String(digit)), d % 2 == 0 {
            even += 1
        } else {
            uneven += 1
        }
    }
} else {
    print("entered string is not a number")
}*/

//9
/*print("enter integer number: ")
var max = 0
let n = readLine() ?? ""
if let nToInt = Int(n) {
    for digit in String(abs(nToInt)) {
         if let d = Int(String(digit)) {
             if max < d {
                 max = d
             }
         }
    }
}*/

//10
/*print ("enter the number: ")
let n = readLine() ?? ""
if var nToInt = Int(n) {
    var a = 0
    var m = 0
    while nToInt != 0 {
        a = nToInt % 10
        m = m * 10 + a
        nToInt /= 10
    }
    print(m)
} else {
    print("couldn't reverse the number")
}*/

//11
/*print("enter the number: ")
var num = readLine() ?? ""
print("enter a digit to delete: ")
var dig = readLine() ?? ""
if var n = Int(num), var d = Int(dig) {
    var m = 0
    var mult = 10
    while n != 0 {
        var a = n % 10
        if a != d {
            m = a * mult + m
            mult *= 10
        }
        n /= 10
    }
    print(m)
} else {
    print("couldn't delete the digit")
}*/

//12
/*for num in 1...10000 {
    var sum = 0
    for div in 1..<num {
        if num % div == 0 {
            sum += div
        }
    }
    if num == sum {
        print(num)
    }
}*/

//13
let pa = 10
let pb = 5
let pc = 2
let qty = 30
let sum = 100
for a in 0...qty {
    for b in 0...(qty - a) {
        let c = qty - a - b
        if pa * a + pb * b + pc * c == sum {
            print("pens: \(a), pencils: \(b), erasers: \(c)")
        }
    }
}

//14
while true {
    print("enter first number: ")
    guard let xStr = readLine(), let x = Double(xStr) else {
        print("invalid first number")
        continue
    }
    print("Enter the operator or 0 to exit: ")
    let op = readLine() ?? ""
    if op == "0" {
        break
    }
    print("enter second number: ")
    guard let yStr = readLine(), let y = Double(yStr) else {
        print("invalid second number")
        continue
    }

    var z: Double?

    switch op {
    case "+":
        z = x + y
    case "-":
        z = x - y
    case "*":
        z = x * y
    case "/":
        if y != 0 {
            z = x / y
        } else {
            print("division by 0")
        }
    default:
        print("invalid operator")
    }
    if let result = z {
        print("\(x) \(op) \(y) = \(result)\n")
    } else {
        print("No result")
    }
}

//15
let num = Int.random(in: 1...50)
print("Guess the number in the 1...50 range:")
while true {
    if let input = readLine(), let guess = Int(input) {
        if guess == num {
            print("correct number!")
            break
        } else {
            print("try again")
        }
    } else {
        print("enter a number")
    }
}

























