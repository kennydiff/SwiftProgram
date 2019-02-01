//
//  NewContactViewController.swift
//  Contacts
//
//  Created by Matthew D. Mathias on 12/11/14.
//  Copyright (c) 2014 BigNerdRanch. All rights reserved.
//

import UIKit

class NewContactViewController: UIViewController {
    
    @IBOutlet var firstNameTextField: UITextField!
    @IBOutlet var lastNameTextField: UITextField!
    @IBOutlet var contactImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        contactImageView.image = ImageFactory.generateDefaultImage(of: contactImageView.frame.size)
    }
    
    
    
    
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
