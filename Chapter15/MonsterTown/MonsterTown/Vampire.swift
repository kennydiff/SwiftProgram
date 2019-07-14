//
//  Vampire.swift
//  MonsterTown
//
//  Created by Kenny on 2019/7/14.
//  Copyright © 2019 yysm. All rights reserved.
//

import Foundation

var vampire_thrall = [Vampire]()

class Vampire: Monster {
    var walksWithLimp = true
    
    final override func terrorizeTown() {
        if (town?.population ?? 0 >= 1){
            town?.changePopulation(by: -1)
        }
        else{
            town?.population = 0
        }
        vampire_thrall.append(self)
        //        super.terrorizeTown()
        super.terrorizeTown()
    }
}
