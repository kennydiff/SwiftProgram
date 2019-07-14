//
//  main.swift
//  MonsterTown
//
//  Created by Matthew D. Mathias on 8/22/14.
//  Copyright (c) 2014 BigNerdRanch. All rights reserved.
//

var myTown = Town()
myTown.changePopulation(by: 500)
let fredTheZombie = Zombie()
fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printDescription()
