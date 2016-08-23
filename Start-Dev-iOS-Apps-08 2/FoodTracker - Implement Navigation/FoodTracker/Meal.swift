//
//  Meal.swift
//  FoodTracker
//
//  Created by Jane Appleseed on 5/26/15.
//  Copyright © 2015 Apple Inc. All rights reserved.
//  See LICENSE.txt for this sample’s licensing information.
//

import UIKit
import CoreLocation
class Meal {
    // MARK: Properties
    
    var name: String
    var photo: UIImage?
    var rating: Int
    var coordenada:Coordinate?
    var latitud:CLLocationDegrees?
    var longitud:CLLocationDegrees?
    //var latitud: Float
    //var longitud: Float

    // MARK: Initialization
    
    init?(name: String, photo: UIImage?, rating: Int, latitud: CLLocationDegrees, longitud: CLLocationDegrees, coordenada: Coordinate) {
        // Initialize stored properties.
        self.name = name
        self.photo = photo
        self.rating = rating
        self.latitud = latitud
        self.longitud = longitud
        self.coordenada = coordenada
        
        // Initialization should fail if there is no name or if the rating is negative.
        if name.isEmpty || rating < 0 {
            return nil
        }
    }

}