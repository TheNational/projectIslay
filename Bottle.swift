//
//  Bottle.swift
//  Project Islay
//
//  Created by jp on 2014-12-22.
//  Copyright (c) 2014 jp. All rights reserved.
//

class Bottle : PFObject, PFSubclassing {
    class func load() {
        self.registerSubclass()
    }
    class func parseClassName() -> String! {
        return "Bottle"
    }
}