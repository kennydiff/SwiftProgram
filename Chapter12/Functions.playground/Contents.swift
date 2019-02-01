// Playground - noun: a place where people can play

import Cocoa

func printPersonalGreetings(to names: String...) {
    for name in names {
        print("Hello \(name), welcome to the playground.")
    }
}
printPersonalGreetings(to: "Alex","Chris","Drew","Pat")

func divisionDescriptionFor(numerator: Double, denominator: Double, withPunctuation punctuation: String = ".") -> String {
    return "\(numerator) divided by \(denominator) equals \(numerator / denominator)\(punctuation)"
}
print(divisionDescriptionFor(numerator: 9, denominator: 3))
print(divisionDescriptionFor(numerator: 9, denominator: 3, withPunctuation: "!"))

var error = "The request failed:"
func appendErrorCode(_ code: Int, toErrorString errorString: inout String) {
    if code == 400 {
        errorString += " bad request."
    }
}
appendErrorCode(400, toErrorString: &error)
error

func areaOfTriangleWith(base: Double, height: Double) -> Double {
    let numerator = base * height
    func divide() -> Double {
        return numerator / 2
    }
    return divide()
}
areaOfTriangleWith(base: 3.0, height: 5.0)

func sortEvenOddNumbers(_ numbers: [Int]) -> (evens: [Int], odds: [Int]) {
    var evens = [Int]()
    var odds = [Int]()
    for number in numbers {
        if number % 2 == 0 {
            evens.append(number)
        } else {
            odds.append(number)
        }
    }
    return (evens, odds)
}
let aBunchOfNumbers = [10,1,4,3,57,43,84,27,156,111]
let theSortedNumbers = sortEvenOddNumbers(aBunchOfNumbers)
print("The even numbers are: \(theSortedNumbers.evens); the odd numbers are: \(theSortedNumbers.odds)")

func grabMiddleName(fromFullName name: (String, String?, String)) -> String? {
    return name.1
}

let middleName = grabMiddleName(fromFullName: ("Matt",nil,"Mathias"))
if let theName = middleName {
    print(theName)
}

func greetByMiddleName(name: (first: String, middle: String?, last: String)) {
    guard let middleName = name.middle else {
        print("Hey there!")
        return
    }
    print("Hey \(middleName)!")
}

greetByMiddleName(name: ("Matt","Danger","Mathias"))

let evenOddFunctionType: ([Int]) -> ([Int], [Int]) = sortEvenOddNumbers

// Bronze Challenge

func shortGreeting(name: (first: String, middle: String?, last: String)) {
    guard let middleName = name.middle, middleName.characters.count < 4 else {
        print("Hey there!")
        return
    }
    print("Hey \(middleName)!")
}

shortGreeting(name: ("Sarah", "Pam", "Johnson"))

// Silver Challenge

let groceries = ["banana","apple","red beans","black beans"]
func siftBeans(fromGroceryList list: [String]) -> (beanCount: Int, beansBought: [String]) {
    var beanCount = 0
    var beansBought = [String]()
    for item in list {
        if item.hasSuffix("beans") {
            beanCount += 1
            beansBought.append(item)
        }
    }
    return (beanCount, beansBought)
}
let beansInfo = siftBeans(fromGroceryList: groceries)
beansInfo.beanCount
beansInfo.beansBought
