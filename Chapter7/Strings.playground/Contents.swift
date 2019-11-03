//: Playground - noun: a place where people can play

import Cocoa

//let playground = "Hello, playground"
//var mutablePlayground = "Hello, mutable playground"
//mutablePlayground += "!"
//mutablePlayground += "!"
//mutablePlayground += "!"
//print(mutablePlayground)

let playground = "Hello, playground"
var mutablePlayground = "Hello, mutable playground"
mutablePlayground += "!"
//for c: Character in mutablePlayground.characters {  //旧版的写法。。。
for c: Character in mutablePlayground{  //#Kenny20190424# 这里，Swift5.0之后不需要再加characters了 ，直接就是Character的容器。
    print("'\(c)'")
}

let oneCoolDude = "\u{1F60E}"
let aAcute = "\u{0061}\u{0301}"

//for scalar in mutablePlayground.unicodeScalars{
//    print("\(scalar.value) ")
//}

let aAcutePrecomposed = "\u{00E1}"
let b = (aAcute == aAcutePrecomposed) // 会显示true

//let aAcutePrecomposed = "\u{00E1}"
//print(aAcute)
//print(aAcutePrecomposed)

//let aAcute: String = "\u{0061}\u{0301}"
//let aAcutePrecomposed: String = "\u{00E1}"
//let b = (aAcute == aAcutePrecomposed)
//print("aAcute: \(aAcute.count); aAcuteDecomposed: \(aAcutePrecomposed.count)")

//let index = playground[3]


//let start = playground.startIndex
//let end = playground.index(start, offsetBy: 4)
//let fifthCharacter = playground[end]
//let range = start...end
//let firstFive = playground[range]

let empty = ""
let start = empty.startIndex
let end = empty.endIndex
//let b = (empty.isEmpty)
//// Hello's Unicode16 's value to a instent.
//let c = "\u{0061}\u{0301}"

