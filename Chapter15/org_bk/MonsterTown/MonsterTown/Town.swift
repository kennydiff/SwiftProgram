//
//  Town.swift
//  MonsterTown
//
//  Created by Matthew D. Mathias on 8/22/14.
//  Copyright (c) 2014 BigNerdRanch. All rights reserved.
//

struct Town {
    var population = 5422
    var numberOfStoplights = 4
    
    func printDescription() {
        print("Population: \(population); number of stop lights: \(numberOfStoplights)")
    }
    
    mutating func changePopulation(by amount: Int) {
        population += amount
    }
}
