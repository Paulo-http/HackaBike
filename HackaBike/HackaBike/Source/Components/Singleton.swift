//
//  Singleton.swift
//  HackaBike
//
//  Created by Paulo Henrique Leite on 16/04/16.
//  Copyright © 2016 Paulo Henrique Leite. All rights reserved.
//

import Foundation

class Singleton {
    class var sharedInstance: Singleton {
        struct Static {
            static var instance: Singleton?
            static var token: dispatch_once_t = 0
        }
        dispatch_once(&Static.token) {
            Static.instance = Singleton()
        }
        return Static.instance!
    }
}