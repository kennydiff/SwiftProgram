// Playground - noun: a place where people can play

//enum TextAlignment : Int {
//    case left    = 20
//    case right   = 30
//    case center  = 40
//    case justify = 50
//    case ddd
//}
/*
enum TextAlignment : Int {
    case left
    case right
    case center
    case justify
    case ddd
}

var alignment = TextAlignment.justify
// alignment = .center

print("Left has raw value \(TextAlignment.left.rawValue)")
print("Right has raw value \(TextAlignment.right.rawValue)")
print("Center has raw value \(TextAlignment.center.rawValue)")
print("Justify has raw value \(TextAlignment.justify.rawValue)")
print("alignment has raw value \(alignment.rawValue)")
print("alignment has raw value \(TextAlignment.ddd.rawValue)")

/*
// Create a raw value
let myRawValue = 3

// Try to convert the raw value into a TextAlignment
// if let myAlignment = TextAlignment(rawValue: myRawValue) {
if TextAlignment(rawValue: myRawValue) != nil {
    // Conversion succeeded!
    print("successfully convered \(myRawValue) into a TextAlignment")
} else {
    // Conversion failed
    print("\(myRawValue) has no corresponding TextAlignment case")
}

switch alignment {
case TextAlignment.left:
    print("left aligned")

case TextAlignment.right:
    print("right aligned")

case TextAlignment.center:
    print("center aligned")

case TextAlignment.justify:
    print("justified")
    
case .ddd:
    print("ddd")
}





// ---------------------------------------------------------------------------

enum ProgrammingLanguage : String {
    case swift
    case objectiveC = "objective-c"
    case c
    case cpp        = "c++"
    case java
}

let myFavoriteLanguage = ProgrammingLanguage.swift
print("My favorite programming language is \(myFavoriteLanguage.rawValue)")

// ---------------------------------------------------------------------------


enum LightBulb {
    case on
    case off

    func surfaceTemperature(forAmbientTemperature ambient: Double) -> Double {
        switch self {
        case .on:
            return ambient + 150.0

        case .off:
            return ambient
        }
    }

    mutating func toggle() {
        switch self {
        case .on:
            self = .off

        case .off:
            self = .on
        }
    }
}

var bulb = LightBulb.on
let ambientTemperature = 50.0

var bulbTemperature = bulb.surfaceTemperature(forAmbientTemperature: ambientTemperature)
print("the bulb's temperature is \(bulbTemperature)")



bulb.toggle()
bulbTemperature = bulb.surfaceTemperature(forAmbientTemperature: ambientTemperature)
print("the bulb's temperature is \(bulbTemperature)")


// ---------------------------------------------------------------------------

enum ShapeDimensions {
    // point has no associated value - it is dimensionless
    case point

    // square's 正方形 associated value is the length of one side
    case square(side: Double)

    // rectangle's 长方形 associated value defines its width and height
    case rectangle(width: Double, height: Double)

    func area() -> Double {
        switch self {
        case .point:
            return 0

        case let .square(side: side):
            print("hi")
            return side * side

        case let .rectangle(width: w, height: h):
            return w * h
        }
    }
}

var squareShape = ShapeDimensions.square(side: 10.0)
var rectShape = ShapeDimensions.rectangle(width: 5.0, height: 10.0)
var pointShape = ShapeDimensions.point

print("square's area = \(squareShape.area())")
print("rectangle's area = \(rectShape.area())")
print("point's area = \(pointShape.area())")

*/


/*
 enum FamilyTree {
 case noKnownParents
 case oneKnownParent(name: String, ancestors: FamilyTree)
 case twoKnownParents(fatherName: String, fatherAncestors: FamilyTree,
 motherName: String, motherAncestors: FamilyTree)
 }*/

enum FamilyTree {
    case noKnownParents
    indirect case oneKnownParent(name: String, ancestors: FamilyTree)
    indirect case twoKnownParents(fatherName: String, fatherAncestors: FamilyTree,
        motherName: String, motherAncestors: FamilyTree)
}

let fredAncestors = FamilyTree.twoKnownParents(
    fatherName: "Fred Sr.",
    fatherAncestors: .oneKnownParent(name: "Matilta",
        ancestors: .noKnownParents),
    motherName: "Marsha",
    motherAncestors: .noKnownParents)
*/
