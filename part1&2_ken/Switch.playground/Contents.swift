// Playground - noun: a place where people can play

import Cocoa

var statusCode: Int = 400
var errorString: String = "The request failed:"
switch statusCode {
case 100, 101:
    errorString += " Informational, \(statusCode)."
    
case 204:
    errorString += " Successful but no content, \(statusCode)."
    
case 300...307:
    errorString += " Redirection, \(statusCode)."
    
case 400..<417:
    errorString += " Client error, \(statusCode)."
    
case 500...505:
    errorString += " Server error, \(statusCode)."
    
case let unknownCode where (unknownCode >= 200 && unknownCode < 300) || unknownCode > 505:
    errorString = "\(unknownCode) is not a known error code."
    
default:
    errorString = "Unknown error encountered."
}
print(errorString)

let error = (code: statusCode, error: errorString)
error.code
error.error

let firstErrorCode = 404
let secondErrorCode = 200
let errorCodes = (firstErrorCode, secondErrorCode)

switch errorCodes {
case (404, 404):
    print("No items found.")
case (404, _):
    print("First item not found.")
case (_, 404):
    print("Second item not found.")
default:
    print("All items found.")
}

let age = 29

switch age {
case 18...35:
    print("Cool demographic")
default:
    break
}

if case 18...35 = age {
    print("Cool demographic")
}

if case 18...35 = age, age >= 21, age < 30 {
    print("In cool demographic and of drinking age and under 30")
}

/*
let point = (x: 1, y: 4)
switch point{
case let q1 where (point.x > 0) && (point.y > 0):
    print ("\(q1) is in quadrant 1")
case let q2 where (point.x < 0) && (point.y > 0):
    print ("\(q2) is in quadrant 1")
case let q3 where (point.x < 0) && (point.y < 0):
    print ("\(q3) is in quadrant 1")
case let q4 where (point.x > 0) && (point.y < 0):
    print ("\(q4) is in quadrant 1")
case (_, 0):
    print ("\(point) sits on the x-axis")
case (0,_):
    print ("\(point) sits on the y-axis")
default:
    print("Case not covered.")
} */


let sex = 2
switch sex {
case 0,1:
    print("正常人")
default:
    print("其他")
}

let f = 3.14
switch f {
case 3.14:
    print("π")
default:
    print("not π")
}
