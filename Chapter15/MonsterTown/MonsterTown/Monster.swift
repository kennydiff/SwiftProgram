//
//  Monster.swift
//  MonsterTown
//
//  Created by Kenny on 2019/7/14.
//  Copyright © 2019 yysm. All rights reserved.
//

import Foundation

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
