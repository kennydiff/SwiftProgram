//
//  Monster.swift
//  MonsterTown
//
//  Created by Matthew D. Mathias on 8/28/14.
//  Copyright (c) 2014 BigNerdRanch. All rights reserved.
//

class Monster {
    var town: Town?
    var name = "Monster"
    
    func terrorizeTown() {
        if town != nil {
            print("\(name) is terrorizing a town!")
        } else {
            print("\(name) hasn't found a town to terrorize yet...")
        }
    }
}