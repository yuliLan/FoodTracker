//
//  Coordinate.swift
//  FoodTracker
//
//  Created by Estudiante on 7/25/16.
//  Copyright © 2016 Apple Inc. All rights reserved.
//

import Foundation

import CoreLocation

class Coordinate {
    
    // MARK: Properties
    var latitud:CLLocationDegrees?
    var longitud:CLLocationDegrees?



    init?(latitud: CLLocationDegrees, longitud: CLLocationDegrees){
        self.latitud = latitud
        self.longitud = longitud
    }
    
}