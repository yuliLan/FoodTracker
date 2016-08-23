//
//  MapViewController.swift
//  FoodTracker
//
//  Created by Estudiante on 7/21/16.
//  Copyright © 2016 Apple Inc. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate {
    
    let sharedData = ShareData.sharedInstance


    @IBOutlet weak var mapView: MKMapView!
    
    func Refresh() {
        
        let cantidad = sharedData.comidas.count
        print("Cantidad: \(cantidad)")
        
        for var contador = 0;  contador<cantidad; ++contador {
            
            print("Contador: \(contador)")
            
            var meal:Meal = self.sharedData.comidas[contador]
            var coordenada:Coordinate? = meal.coordenada
            var comida:String = meal.name
            var rating:String = "Rating: " + String(meal.rating)
            
            
            var theSpan:MKCoordinateSpan = MKCoordinateSpanMake(0.01 , 0.01)
            var location:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: (coordenada?.latitud!)!, longitude: (coordenada?.longitud!)!)
            var theRegion:MKCoordinateRegion = MKCoordinateRegionMake(location, theSpan)
            mapView.setRegion(theRegion, animated: true)
            
            print("Latitud: \((coordenada?.latitud!)!)")
            print("Longitud: \((coordenada?.longitud!)!)")
            
            
            var anotation = MKPointAnnotation()
            anotation.coordinate = location
            anotation.title = comida
            anotation.subtitle = rating
            
            mapView.addAnnotation(anotation)
            
        }

    }

    override func viewDidLoad() {
        //mapView.layer.zPosition = 0
        super.viewDidLoad()
        self.mapView.delegate = self
        self.Refresh()
        
        
        //aca defino los valores
        //self.sharedData.someString ="Some String Value"
        
        
        // Do any additional setup after loading the view.
        
        // Do any additional setup after loading the view.
    }

/*
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
  */
       
    func action(gestureRecognizer:UIGestureRecognizer) {
        var touchPoint = gestureRecognizer.locationInView(self.mapView)
        var newCoord:CLLocationCoordinate2D = mapView.convertPoint(touchPoint, toCoordinateFromView: self.mapView)
        
        var newAnotation = MKPointAnnotation()
        
        newAnotation.coordinate = newCoord
        newAnotation.title = "New Location"
        newAnotation.subtitle = "New Subtitle"
        mapView.addAnnotation(newAnotation)
        
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


}