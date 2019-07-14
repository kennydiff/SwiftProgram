//
//  Town.swift
//  MonsterTown
//
//  Created by Kenny on 2019/7/14.
//  Copyright © 2019 yysm. All rights reserved.
//

import Foundation

struct Town {
    var population = 422
    var numberOfStoplights = 4
    func printDescription() {
        print("Population: \(population), number of stoplights: \(numberOfStoplights)")
    }
    //mutating
    mutating func changePopulation(by amount: Int) {
        population += amount
    }
}

