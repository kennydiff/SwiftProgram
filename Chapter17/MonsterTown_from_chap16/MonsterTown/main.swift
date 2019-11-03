//
//  main.swift
//  MonsterTown
//
//  Created by Matthew D. Mathias on 8/22/14.
//  Copyright (c) 2014 BigNerdRanch. All rights reserved.
//

var myTown = Town(population: 10_000, stoplights: 6)

//myTown.region = "North"

let myTownSize = myTown?.townSize
//print(myTownSize)

//myTown.changePopulation(by: 1_000_000)
//myTown.changePopulation(by: -1)
//print("Size: \(myTown.townSize); population: \(myTown.population)")

//let fredTheZombie = Zombie(limp: false,fallingApart: false, town: myTown, monsterName: "Fred")
var fredTheZombie: Zombie? = Zombie(limp: false, fallingApart: false)

//fredTheZombie.town = myTown
fredTheZombie?.terrorizeTown()
fredTheZombie?.town?.printDescription()

print("Victim pool: \(fredTheZombie?.victimPool ?? 0)")
fredTheZombie?.victimPool = 500
print("Victim pool: \(fredTheZombie?.victimPool ?? 0)")

print(Zombie.spookyNoise)
if Zombie.isTerrifying {
    print("Run away!")
}
fredTheZombie = nil
