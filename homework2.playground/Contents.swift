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




















