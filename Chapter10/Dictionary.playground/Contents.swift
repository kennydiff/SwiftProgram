// Playground - noun: a place where people can play

import Cocoa

/*
var movieRatings = ["Donnie Darko": 4, "Chungking Express": 5, "Dark City": 4]
print("I have rated \(movieRatings.count) movies.")
let darkoRating = movieRatings["Donnie Darko"]
movieRatings["Dark City"] = 5
//movieRatings
let oldRating: Int? = movieRatings.updateValue(5, forKey: "Donnie Darko")
if let lastRating = oldRating, let currentRating = movieRatings["Donnie Darko"] {
    print("Old rating: \(lastRating); current rating: \(currentRating)")
}

movieRatings["The Cabinet of Dr. Caligari"] = 5
movieRatings["The Cabinet of Dr. Caligari_BBB"] = 99
//let removedRating: Int? = movieRatings.removeValue(forKey: "Dark City")
movieRatings["Dark City"] = nil
movieRatings

*/

//
//for (keyB,valueGGG) in movieRatings {
//    print("The movie \(keyB) was rated: \(valueGGG).")
//}


//for movie in movieRatings.keys {
//    print("User has rated \(movie).")
//}

/*
let album = ["Diet Roast Beef": 268,
             "Dubba Dubbs Stubs His Toe": 467,
             "Smokey's Carpet Cleaning Service": 187,
             "Track 4": 221
            ]
print(album["Smokey's Carpet Cleaning Service"]!)

let watchedMovies = Array(movieRatings.keys)
let watchedMoviesRates = Array(movieRatings.values)
*/

// Silver Challenge
/*
let georgia = ["Cobb": [666666,30301,30302,30303,30304,30305],
               "Dekalb": [777777,30306,30307,30308,30309,30310],
               "Fulton": [88888,30311,30312,30313,30314,30315]
               ]
var zipcodes: [Int] = []
for zipcodeArray in georgia.values {
    for zipcode in zipcodeArray {
        zipcodes.append(zipcode)
    }
}
print("Georgia has the following zip codes: \(zipcodes)") */


// Silver Challenge GOLD!~~~~
let georgia = ["Cobb":   [666666,30301,30302,30303,30304,30305],
               "Dekalb": [777777,30306,30307,30308,30309,30310],
               "Fulton": [888888,30311,30312,30313,30314,30315]
]
var zipcodes: [Int] = []
for zipcodeArray in georgia.values {
    for zipcode in zipcodeArray {
        zipcodes.append(zipcode)
    }
}

//print("Georgia has the following zip codes: \(zipcodes)")


/*
var zipcodes: [Int]? = []
zipcodes = georgia["Dekalb"]
var firstline = "Georgia has the following zip codes: [";
var line23Space = ""
var line23Value = ""
for _ in 1..<firstline.count {
    line23Space += " "
}

for value in georgia["Dekalb"]!{
    firstline += String(value)
    firstline += ","
}

for value in georgia["Fulton"]!{
    line23Value += String(value)
    line23Value += ","
}

print(firstline)
print(line23Space,line23Value)  //打印第二行

line23Value = ""
for value in georgia["Cobb"]!{
    line23Value += String(value)
    line23Value += ","
}

// 字符串删除最后一个字符（不改变原字符串）
line23Value.remove(at: line23Value.index(before: line23Value.endIndex))
// 字符串追加（改变原字符串）
line23Value.append("]")
print(line23Space,line23Value)   //打印第三行
*/






// Gold Challenge
var counter = 0
let label = "Georgia has the following zip codes:"
let emptyString = Array(repeating: " ", count: label.count).joined(separator: "")
var printString = ""
print(label, terminator: "")

for zip in zipcodes {
    printString = ""
    switch counter {
    case 6, 12:
        print("\r")  // \r是回车， \n是换行
        printString = emptyString
        fallthrough
    default:
        print(printString, zip, terminator: "")
    }
    counter += 1
}




//print("")
//
//var index = 10
//
//switch index {
//case 100  :
//    print( "index 的值为 100")
//case 10,15  :
//    print( "index 的值为 10 或 15")
//    fallthrough
//case 5  :
//    print( "index 的值为 5")
//case 1  :
//    print( "index 的值为 1")
//default :
//    print( "默认 case")
//}
