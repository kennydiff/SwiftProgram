//
//  Contact.swift
//  Contacts
//
//  Created by Matthew D. Mathias on 12/9/14.
//  Copyright (c) 2014 BigNerdRanch. All rights reserved.
//

import Foundation

class Contact: NSObject {
    let name: String
    
    init(name: String) {
        self.name = name
        super.init()
    }
}
