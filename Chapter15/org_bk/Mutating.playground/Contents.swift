//: Playground - noun: a place where people can play

import Cocoa

func greet(name: String, withGreeting greeting: String) -> String {
    return "\(greeting) \(name)"
}

let personalGreeting = greet(name: "Matt", withGreeting: "Hello,")
print(personalGreeting)

func greeting(forName name: String) -> (String) -> String {
    func greeting(greeting: String) -> String {
        return "\(greeting) \(name)"
    }
    return greeting
}

func greeting(_ greeting: String) -> (String) -> String {
    return { (name: String) -> String in
        return "\(greeting) \(name)"
    }
}

let friendlyGreeting = greeting("Hello,")
let newGreeting = friendlyGreeting("Matt")
print(newGreeting)

struct Person {
    var firstName = "Matt"
    var lastName = "Mathias"
    
    mutating func changeTo(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

var p = Person()
let changeName = Person.changeTo







let changeNameFromMattTo = changeName(&p)
changeNameFromMattTo("John", "Gallagher")
p.firstName
p.changeTo(firstName: "John", lastName: "Gallagher")
