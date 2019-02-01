// Playground - noun: a place where people can play

import Cocoa
import Swift

struct Point: Comparable {
    let x: Int
    let y: Int
    
    static func ==(lhs: Point, rhs: Point) -> Bool {
        return (lhs.x == rhs.x) && (lhs.y == rhs.y)
    }
    
    static func <(lhs: Point, rhs: Point) -> Bool {
        return (lhs.x < rhs.x) && (lhs.y < rhs.y)
    }
}

let a = Point(x: 3, y: 4)
let b = Point(x: 3, y: 4)

let abEqual = (a == b)
let abNotEqual = (a != b)

let c = Point(x: 2, y: 6)
let d = Point(x: 3, y: 7)

let cdEqual = (c == b)
let cLessThanD = (c < d)

let cLessThanEqualD = (c <= d)
let cGreaterThanD = (c > d)
let cGreaterThanEqualD = (c >= d)

// Bronze Challenge

func +(lhs: Point, rhs: Point) -> Point {
    let newX = (lhs.x + rhs.x)
    let newY = (lhs.y + rhs.y)
    return Point(x: newX, y: newY)
}

let p1 = Point(x: 1, y: 2)
let p2 = Point(x: 3, y: 5)

let p3 = p1 + p2
p3.x
p3.y

// Gold Challenge 

class Person: Equatable {
    var name: String
    var age: Int
    weak var spouse: Person?
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func marry(_ spouse: Person) {
        self.spouse = spouse
        spouse.spouse = self
    }
}

func ==(lhs: Person, rhs: Person) -> Bool {
    return (lhs.name == rhs.name) && (lhs.age == rhs.age)
}

let matt = Person(name: "Matt", age: 32)
let john = Person(name: "John", age: 31)

let people = [matt, john]

let mattIndex = people.index(of: matt)

// Platinum Challenge

struct PlatinumPoint {
    let x: Int
    let y: Int
}

extension PlatinumPoint: Comparable {
    
    func euclideanDistanceToOrigin() -> Double {
        let origin = PlatinumPoint(x: 0, y: 0)
        return sqrt(pow((Double(origin.x - self.x)), 2) + pow((Double(origin.y - self.y)), 2))
    }
    
    static func ==(lhs: PlatinumPoint, rhs: PlatinumPoint) -> Bool {
        return (lhs.x == rhs.x) && (lhs.y == rhs.y)
    }
    
    static func <(lhs: PlatinumPoint, rhs: PlatinumPoint) -> Bool {
        let rhsToOrigin = rhs.euclideanDistanceToOrigin()
        let lhsToOrigin = lhs.euclideanDistanceToOrigin()
        return !(rhsToOrigin < lhsToOrigin)
    }

}

let pa = PlatinumPoint(x: 2, y: 4)
let pb = PlatinumPoint(x: 1, y: 5)
pa.euclideanDistanceToOrigin()
pb.euclideanDistanceToOrigin()
pa < pb
pa > pb

// For the More Curious

let drew = Person(name: "Drew", age: 33)

precedencegroup Marriage {
    associativity: none
}

infix operator +++

func +++(lhs: Person, rhs: Person) {
    lhs.spouse = rhs
    rhs.spouse = lhs
}

//matt +++ drew

//matt.marry(drew)

matt.spouse?.name
drew.spouse?.name