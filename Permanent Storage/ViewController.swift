//
//  ViewController.swift
//  Permanent Storage
//
//  Created by Jason Shultz on 9/29/15.
//  Copyright © 2015 HashRocket. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        NSUserDefaults.standardUserDefaults().setObject("Rob Roy", forKey: "name")
        
        let userName = NSUserDefaults.standardUserDefaults().objectForKey("name")! as! String
        
        print(userName)
        
        let arr = [1,2,3,4]
        
        NSUserDefaults.standardUserDefaults().setObject(arr, forKey: "array")
        
        let returnedArray = NSUserDefaults.standardUserDefaults().objectForKey("array")! as! NSArray
        
        for x in returnedArray {
            print(x)
        }
        
        print(returnedArray)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

