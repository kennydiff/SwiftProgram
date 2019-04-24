// Playground - noun: a place where people can play

import Cocoa

//var myFirstInt = 0

/*for _ in 1...5 {
    myFirstInt += 1
    //myFirstInt += i
    myFirstInt
//    print("myFirstInt equals \(myFirstInt) at iteration \(i)")
    print(myFirstInt)
}*/


//for i: Int in 1...100 where i % 3 == 0 {
//    print(i)
//}

/*
for _ in 1...5 {
    myFirstInt += 1
    myFirstInt
    print(myFirstInt)
} */

//var i = 1
//while i < 6 {
//    myFirstInt += 1
//    print(myFirstInt)
//    i += 1
//}

//var shields: Int = 0
//repeat {
//    print("Fire blasters!")
//    shields += 1
//}while shields < 10

/*
var shields = 5
var blastersOverheating = false
var blasterFireCount = 0
var spaceDemonsDestroyed = 0
while shields > 0 {
    if spaceDemonsDestroyed == 30 {
        print("You beat the game!")
        break
    }
    if blastersOverheating {
        print("Blasters are overheated!  Cooldown initiated.")
        sleep(2)
        print("Blasters ready to fire")
        sleep(1)
        blastersOverheating = false
        blasterFireCount = 0
        //continue
    }
    if blasterFireCount > 4 {
        blastersOverheating = true
        //continue
    }
    // Fire blasters! 
    print("Fire blasters!")
    blasterFireCount += 1
    spaceDemonsDestroyed += 1
}
*/


/* for i in 1...37 {
    if i % 3 == 0 , i % 5 == 0 {
        print("\(i) FIZZ&BUZZ")
    }
    else if i % 3 == 0 {
        print("\(i) FIZZ")
    }
    else if i % 5 == 0{
        print("\(i) BUZZ")
    }
    else {
        print(i)
    }
} */

for i in 1...37 {
    switch i {
    case let b where (i % 3 == 0) && (i % 5 == 0):
        print("\(b) FIZZ&BUZZ")
        
    case let c where i%3 == 0:
        print("\(c) FIZZ")
        
    case let d where  i%5 == 0:
//        print("\(d) ddddddddddddd")
        print("\(d) BUZZ")
        
    default :
        print(i)
    }
}
