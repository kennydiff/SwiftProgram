//: Playground - noun: a place where people can play

import Cocoa

// Section: Value Semantics
var str = "Hello, playground"
var playgroundGreeting = str
playgroundGreeting += "! How are you today?"
str

// Section: Reference Semantics
class GreekGod {
    var name: String
    init(name: String) {
        self.name = name
    }
}

let hecate = GreekGod(name: "Hecate")    //赫卡特女神
let anotherHecate = hecate
anotherHecate.name = "AnotherHecate"

anotherHecate.name
hecate.name



// Section: Constant Value and Reference Types
struct Pantheon {    //万神殿
    var chiefGod: GreekGod
    let dateCreated = NSDate() // add this in section on using Val & Ref types together
}

let pantheon = Pantheon(chiefGod: hecate)
let zeus = GreekGod(name: "Zeus")
zeus.name = "Zeus Jr."
zeus.name

// Section: Using Reference and Value Types Together
pantheon.chiefGod.name
pantheon.dateCreated
let greekPantheon = pantheon   //希腊万神殿

hecate.name = "Trivia" // The Romans are taking over and changing things
greekPantheon.chiefGod.name // ???
greekPantheon.dateCreated

// Section: Shallow Vs. Deep Copy
let athena = GreekGod(name: "Athena")

let gods = [athena, hecate, zeus]
let godsCopy = gods
gods.last?.name = "Jupiter"
gods
godsCopy

athena === hecate
