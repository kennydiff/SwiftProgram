//
//  Mayor.swift
//  MonsterTown
//
//  Created by Kenny on 2019/7/22.
//  Copyright © 2019 BigNerdRanch. All rights reserved.
//

import Foundation

struct Mayor{
    var name = "nobody"
    private var anxietyLevel = 0
    mutating func MayorAnnouce(){
        print("I'm deeply saddened to hear about this latest tragedy. I promise that my office is looking into the nature of this rash of violence.")
        anxietyLevel += 1
        print("anxietyLevel is: ",anxietyLevel)
    }
}
