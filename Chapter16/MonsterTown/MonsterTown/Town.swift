//
//  Town.swift
//  MonsterTown
//
//  Created by Matthew D. Mathias on 8/22/14.
//  Copyright (c) 2014 BigNerdRanch. All rights reserved.
//

struct Town {
    static let region = "South"
    var population = 5_422 {
        didSet(oldValue2){
            print("The population has changed to \(population) from \(oldValue2).")
            
            if (population < oldValue2){
                aMayor.MayorAnnouce()
            }
        }
    }
    var numberOfStoplights = 4
    
    var aMayor = Mayor()
    
    
    enum Size {
        case small
        case medium
        case large
    }
    
    var townSize: Size {
        get {
            switch self.population {
            case 0...10_000:
                return Size.small
                
            case 10_001...100_000:
                return Size.medium
                
            default:
                return Size.large
            }
        }
    }
    
    func printDescription() {
        print("Population: \(population); number of stop lights: \(numberOfStoplights)")
    }
    
    mutating func changePopulation(by amount: Int) {
        population += amount
    }
    
    
}
