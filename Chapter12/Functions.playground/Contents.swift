// Playground - noun: a place where people can play

import Cocoa

//func printPersonalGreetings(to names: String...) {   // 这尼玛三个点字符串数组，，，的声明好骚啊...
//    for name in names {
//        print("Hello \(name), welcome to the playground.")
//    }
//}
//printPersonalGreetings(to: "Alex","Chris","Drew","Pat")
//
//func printPersonalGreetings(bbb to: String) {
//
//        print("Hello \(to), welcome to the playground.")
//
//}
//printPersonalGreetings(bbb: "Alex")


//func divisionDescriptionFor(numerator: Double, denominator: Double, withPunctuation punctuation: String = ".") -> String {
//    return "\(numerator) divided by \(denominator) equals \(numerator / denominator)\(punctuation)"
//}
//print(divisionDescriptionFor(numerator: 9, denominator: 3))
//print(divisionDescriptionFor(numerator: 9, denominator: 3, withPunctuation: "!"))



//var error = "The request failed:"
//func appendErrorCode(_ code: Int, toErrorString errorString: inout String) {
//    if code == 400 {
//        errorString += " bad request."
//    }
//}
//appendErrorCode(400, toErrorString: &error)
//error

/*
func areaOfTriangleWith(base: Double, height: Double) -> Double {
    var numerator = base * height
    var aaa:String = "000"
    func divide() -> Double {
        aaa = "dddDDD"
        func kbc(){
            aaa = "bbbFFFFFFFF"
        }
        kbc()
        return numerator / 2
    }
    let ddouble: Double = divide()
    print(aaa)
    return ddouble
    
}
areaOfTriangleWith(base: 3.0, height: 5.0)
*/

//func areaOfTriangleWith(base: Double, height: Double) -> Int {  //-> Double
//    let numerator = base * height
//    return Int(numerator / 2)
//}



//注意这里返回值(evens: [Int], odds: [Int])是命名元组(named tuple)
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

let aBunchOfNumbers = [10,1,4,3,57,43,84,27,156,111,120]
let theSortedNumbers = sortEvenOddNumbers(aBunchOfNumbers)
print("The even numbers are: \(theSortedNumbers.evens); the odd numbers are: \(theSortedNumbers.odds)")
print(theSortedNumbers.odds)  //这是个命名元组


/*
func grabMiddleName(fromFullName name: (firtName:String, midName:String?, lastName:String)) -> String? {
    return name.lastName
}

let middleName = grabMiddleName(fromFullName: ("Matt",nil,"Mathias"))
if let theName = middleName {
    print(theName)
} */


let name = "王红庆"
let age = 18
let title: String? = "iOS开发大菜逼"
// 下面这样写会报警告:String interpolation produces a debug description for an optional value; did you mean to make this explicit?
//let str = "\(name)\(age)\(title)"

/*  解决'警告'和输出'Optional'的办法
  1.对'title'强行解包(这里不推荐不推荐)--->(title!)
  2.使用'??'-------------------------->(title ?? "")
*/

//let str = "\(name)\(age)\(title!)"      // 输出:王红庆18iOS开发大菜逼
let str = "\(name)\(age)\(title ?? "")" // 输出:王红庆18iOS开发大菜逼
print(str)                              // 输出:王红庆18Optional("iOS开发大菜逼")


//func greetByMiddleName(name: (first: String, middle: String?, last: String)) {
//    guard let middleName = name.middle else {
//        print("Hey there!")
//        return
//    }
//    print("Hey \(middleName)!")
//}

func greetByMiddleName(name: (first: String, middle: String?, last: String)) {
    guard let middleName = name.middle else{
        print("Hey there!")
        return
    }
    middleName
    print("Hey \(middleName)!")
}


//greetByMiddleName(name: ("Matt","Danger","Mathias"))
greetByMiddleName(name: ("Matt",nil,"Mathias"))




let evenOddFunctionType2: ([Int]) -> ([Int], [Int]) = sortEvenOddNumbers

// Bronze Challenge

func shortGreeting(name: (first: String, middle: String?, last: String)) {
    guard let middleName = name.middle, middleName.count < 4 else {
        print("Hey there!")
        return
    }
    print("Hey \(middleName)!")
}
//shortGreeting(name: ("Sarah", "Pam", "Johnson"))
shortGreeting(name: ("Sarah", "Pam", "Johnson"))

// Silver Challenge

/*
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
print(beansInfo.beanCount)
print(beansInfo.beansBought) */


let groceries = ["banana","apple","red beans","black beans"]
func siftBeans(fromGroceryList list: [String]) -> (beans: [String], otherGroceries: [String]) {
    var beans = Array<String>()
    var otherGroceries = Array<String>()
    for item in list {
        if item.hasSuffix("beans") {
            beans.append(item)
        }
        else{
            otherGroceries.append(item)
        }
    }
    return (beans, otherGroceries)
}
let beansInfo = siftBeans(fromGroceryList: groceries)
print(beansInfo.beans)
print(beansInfo.otherGroceries)



func printPersonalGreetings(to name: String) -> Void {
    print("Hello \(name), welcome to the playground.")
}

printPersonalGreetings(to: "Kenny")
