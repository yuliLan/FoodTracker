//
//  ShareData.swift
//  FoodTracker
//
//  Created by Estudiante on 7/25/16.
//  Copyright © 2016 Apple Inc. All rights reserved.
//

import Foundation
import CoreLocation


class ShareData {
    class var sharedInstance: ShareData {
        struct Static {
            static var instance: ShareData?
            static var token: dispatch_once_t = 0
        }
        
        dispatch_once(&Static.token) {
            Static.instance = ShareData()
        }
        
        return Static.instance!
    }

    var posiciones = [Coordinate]()
    var comidas = [Meal]()

}
