//
//  Monster.swift
//  MonsterTown
//
//  Created by Matthew D. Mathias on 8/28/14.
//  Copyright (c) 2014 BigNerdRanch. All rights reserved.
//

class Monster {
    var town: Town?
    var name: String
    
    var victimPool: Int {
        get {
            return town?.population ?? 0
        }
        set(newVictimPool) {
            town?.population = newVictimPool
        }
    }
    
    required init(town: Town?, monsterName: String) {
        self.town = town
        name = monsterName
    }
    
    func terrorizeTown() {
        if town != nil {
            print("\(name) is terrorizing a town!")
        } else {
            print("\(name) hasn't found a town to terrorize yet...")
        }
    }
}
