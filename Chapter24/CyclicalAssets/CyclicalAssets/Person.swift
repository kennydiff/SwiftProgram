//
//  Person.swift
//  CyclicalAssets
//
//  Created by John Gallagher on 10/1/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

import Foundation

class Person : CustomStringConvertible {
    let name: String
    let accountant = Accountant()
    var assets = [Asset]()

    var description: String {
        return "Person(\(name))"
    }

    init(name: String) {
        self.name = name

        accountant.netWorthChangedHandler = {
            [weak self] netWorth in

            self?.netWorthDidChange(to: netWorth) ?? ()
            return
        }
    }

    deinit {
        print("\(self) is being deallocated")
    }

    func takeOwnership(of asset: Asset) {
        accountant.gained(asset) {
            asset.owner = self
            assets.append(asset)
        }
    }

    func netWorthDidChange(to netWorth: Double) {
        print("The net worth of \(self) is now \(netWorth)")
    }

    func useNetWorthChangedHandler(handler: @escaping (Double) -> Void) {
        accountant.netWorthChangedHandler = handler
    }
}
