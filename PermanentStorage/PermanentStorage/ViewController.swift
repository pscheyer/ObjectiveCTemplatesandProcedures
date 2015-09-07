//
//  ViewController.swift
//  PermanentStorage
//
//  Created by Peter Scheyer on 5/29/15.
//  Copyright (c) 2015 Peter Scheyer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        NSUserDefaults.standardUserDefaults().setObject("Peter", forKey: "name")
        
        println(NSUserDefaults.standardUserDefaults().objectForKey("name"))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

