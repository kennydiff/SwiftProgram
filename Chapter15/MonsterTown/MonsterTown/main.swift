//
//  main.swift
//  MonsterTown
//
//  Created by Kenny on 2019/7/13.
//  Copyright © 2019 yysm. All rights reserved.
//

import Foundation

print("Hello, World!")

var myTown = Town()
//print("Population: \(myTown.population), number of stoplights: \(myTown.numberOfStoplights)")
//myTown.changePopulation(by: 500)

//myTown.printDescription()
//let genericMonster = Monster()
//genericMonster.town = myTown
//genericMonster.terrorizeTown()

//let fredTheZombie = Zombie()
//fredTheZombie.town = myTown
//
//fredTheZombie.terrorizeTown()
//fredTheZombie.town?.printDescription()  //??? 尴尬,,,有缺陷,,,僵尸无法杀死人? 知道缺陷，并修复.


let fredVampire = Vampire()
fredVampire.town = myTown
fredVampire.town?.printDescription()
print(vampire_thrall)
fredVampire.terrorizeTown()
fredVampire.town?.printDescription()
print(vampire_thrall)


let fredVampire2 = Vampire()
fredVampire2.town = myTown
//fredVampire2.town?.printDescription()
fredVampire2.terrorizeTown()
fredVampire2.town?.printDescription()
print(vampire_thrall)
