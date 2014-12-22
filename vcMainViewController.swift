//
//  vcMainViewController.swift
//  Project Islay
//
//  Created by jp on 2014-06-09.
//  Copyright (c) 2014 jp. All rights reserved.
//

import UIKit
import Foundation
import Realm

class mainController: UIViewController {
    
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        // Custom initialization
    }

    required init(coder aDecoder: NSCoder!) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func queryButtonPressed(sender: UIButton) {
        var query:PFQuery = PFQuery(className: "Bottle")
        
    }
   
    @IBAction func buttonPressed(sender: UIButton) {
        var test:PFObject = PFObject.objectFromDataFile("Bottle") as PFObject
        NSLog("\(test)")
    }
    @IBAction func saveObjectPressed(sender: AnyObject) {
        var testObject:PFObject = PFObject(className: "Bottle")
        testObject.setObject("Hello", forKey: "name")
        testObject.saveInBackgroundWithBlock{
            (succeded:Bool, error:NSError!) -> Void in
            if succeded {
                testObject.serializeToDataFile("Bottle")
            }
        }
    }
    
  }
