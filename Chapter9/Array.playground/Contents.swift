// Playground - noun: a place where people can play

import Cocoa

// Mutable arrays
var bucketList = ["000"]
bucketList.append("111")
bucketList.append("222")
var newItems = [
                "333",
                "444",
                "555",
                "666"
                ]
for item in newItems {
    bucketList.append(item)
}

//bucketList += newItems

//bucketList.remove(at: 2)
//print(bucketList)
//print(bucketList.count)
bucketList[2] += "+=2+++"
bucketList[0] = "new000"
bucketList.insert("insert at 222", at: 2)  //在第二个的前面插入字符串"insert at 222"
//print(bucketList)



var bucketList1 = [
    "Climb Mt. Everest",
    "Fly hot air balloon to Fiji",
    "Toboggan across Alaska",
    "Go on a walkabout in Australia",
    "Scuba dive in the Great Blue Hole",
    "Find a triple rainbow"
]

bucketList1[0] = "Climb Mt. Kilimanjaro"

var myronsList = [
                  "Climb Mt. Kilimanjaro",
                  "Fly hot air balloon to Fiji",
                  "Toboggan across Alaska",
                  "Go on a walkabout in Australia",
                  "Scuba dive in the Great Blue Hole",
                  "Find a triple rainbow"
                 ]

let equal = bucketList1 == myronsList
//print(equal)

// Immutable arrays

var lunches = ["Cheeseburger",
               "Veggie Pizza",
               "Chicken Caesar Salad",
               "Black Bean Burrito",
               "Felafel wrap"
    ]

var emptyDoubles: [String] = []

//print(lunches.count)
//print(emptyDoubles.isEmpty)


//for index in 0..<lunches.count {
//   print(lunches[lunches.count-1-index])
//}

//for item in lunches.reversed(){
  //  print(item)
//}


//遍历数组
//let iosArray = ["L", "O", "V", "E", "I", "O", "S"]
//
//for index in 0...6 {
//    print(iosArray[6-index])
//}

//for index in 0..<6 {
//    print(iosArray[index])
//}

//for element in iosArray {
//    print(element)
//}

//let numbers = [3, 7, 4, -2, 9,  -6, -11, 10, 1]
//if let lastNegative = numbers.first(where: { $0 < 0 }) {
//    print("The last negative number is \(lastNegative).")
//}


let students = ["Kofi", "A傻逼", "Abena", "Peter", "Kweku", "Akosua"]
if let i = students.firstIndex(where: { $0.hasPrefix("A") }) {   // $0是传递给闭包(closure)的第一个参数。 $1 是第二个参数
    print("\(students[i]) starts with 'A'!")
}
// Prints "Abena starts with 'A'!"
