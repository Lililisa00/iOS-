//functions
//1
func printSortedArray(array: [Int]) -> Void {
    print(array.sorted())
}

func printProcessedString(string: String) -> Void {
    guard string.count >= 3 else {
        print("string must have at least 3 symbols")
        return
    }
    var arr = Array(string)
    var temp = arr[0]
    arr[0] = arr[1]
    arr[1] = arr[2]
    arr[2] = temp
    
    arr.sort()
    print(String(arr))
}

func printStringSum(str1: String, str2: String) -> Void {
    var newStr = str1 + str2
    print(newStr)
}

//2
func journal(name: String, job: String, grade: Int) -> [Any] {
    return [name, job, grade]
}
func printjournal() {
    for i in 1...10 {
        print(journal(name: "\(i)", job: "\(i)", grade: i))
    }
}

//3
func printNameSurename(name: String, surename: String) -> Void {
    var nameArr = [name, surename]
    print(nameArr)
}

//4
func circleArea(radius: Double) -> Double? {
    if radius <= 0 {
        print("radius must be positive")
        return nil
    }
    var area = Double.pi * radius * radius
    return area
}

//5
let students: [String: Any] = [
    "names": ("Masha", "Katya", "Vova", "Olya", "Sasha"),
    "scores": (1, 2, 3, 4, 5)
]
func printNames(from students: [String: Any]) -> Void {
    if let namesTuple = students["names"] as? (String, String, String, String, String) {
        print("1. \(namesTuple.0)")
        print("2. \(namesTuple.1)")
        print("3. \(namesTuple.2)")
        print("4. \(namesTuple.3)")
        print("5. \(namesTuple.4)")
    } else {
        print("names not found")
    }
}

