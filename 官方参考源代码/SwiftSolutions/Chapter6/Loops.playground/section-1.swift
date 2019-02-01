// Playground - noun: a place where people can play

import Cocoa

var myFirstInt = 0
for i in 1...5 {
    myFirstInt += 1
    myFirstInt
    print(myFirstInt)
}

for i in 1...100 where i % 3 == 0 {
    print(i)
}

for _ in 1...5 {
    myFirstInt += 1
    myFirstInt
    print(myFirstInt)
}

var i = 1
while i < 6 {
    myFirstInt += 1
    print(myFirstInt)
    i += 1
}

var shields = 5
var blastersOverheating = false
var blasterFireCount = 0
var spaceDemonsDestroyed = 0
while shields > 0 {
    if spaceDemonsDestroyed == 500 {
        print("You beat the game!")
        break }
    if blastersOverheating {
        print("Blasters are overheated!  Cooldown initiated.")
        sleep(5)
        print("Blasters ready to fire")
        sleep(1)
        blastersOverheating = false
        blasterFireCount = 0
        continue
    }
    if blasterFireCount > 100 {
        blastersOverheating = true
        continue }
    // Fire blasters! 
    print("Fire blasters!")
    blasterFireCount += 1
    spaceDemonsDestroyed += 1
}
