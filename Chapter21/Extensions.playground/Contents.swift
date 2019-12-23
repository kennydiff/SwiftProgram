// MARK: Typealias for Double
typealias Velocity = Double

// MARK: Extend Velocity to suport converting
// Velocity is a typealias on Double that presents some complications with the visibility of the alias project-wide
// I.e., there is a problem with the interchangeability of Velocity for Double
extension Velocity { //n. [力] 速率；迅速；周转率
    var kph: Velocity { return self * 1.60934 }
    var mph: Velocity { return self }
}


// MARK: Vehicle
protocol Vehicle {  //交通工具,车辆,载具,运载工具
    var topSpeed: Velocity { get }
    var numberOfDoors: Int { get }
    var hasFlatbed: Bool { get }
}

// MARK: Car struct
struct Car {
    let make: String
    let model: String
    let year: Int
    let color: String
    let nickname: String
    var gasLevel: Double {
        willSet {
            precondition(newValue <= 1.0 && newValue >= 0, "New value must be between 0 and 1.")  //precondition 先决条件
        }
    }
}



// MARK: Conforming to VehicleType
extension Car: Vehicle {
    var topSpeed: Velocity { return 180 }
    var numberOfDoors: Int {return 4}
    var hasFlatbed: Bool { return false }
}



// MARK: Extend Car to have convenience initializer
// Define initializer in an extension to retain free memberwise initializer
extension Car {
    init(make: String, model: String, year: Int) {
        self.init(make: make,
            model: model,
            year: year,
            color: "Black",
            nickname: "N/A",
            gasLevel: 1.0)
    }
}

// MARK: Create a Car instance
var c = Car(make: "Ford", model: "Fusion", year: 2013)



// MARK: Nested type
extension Car {
    enum Kind {
        case coupe, sedan   //coupe轿跑，sedan轿车
    }
    var kind: Kind {
        if numberOfDoors == 2 {
            return .coupe
        } else {
            return .sedan
        }
    }
}

c.kind


// MARK: Gas functions
extension Car {
    mutating func emptyGas(by amount: Double) {
        precondition(gasLevel >= amount, "消耗的燃油不能大于当前燃油量。")
        precondition(amount <= 1 && amount > 0, "Amount to remove must be between 0 and 1.")
        gasLevel -= amount
    }
    
    mutating func fillGas() {
        gasLevel = 1.0
    }
}

c.emptyGas(by: 0.8)
c.gasLevel
c.emptyGas(by: 0.1)
c.gasLevel
c.fillGas()
c.gasLevel


extension Int {
    var timesFive: Int { return self * 5 }
}

5.timesFive
