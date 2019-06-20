//
//  ViewController.swift
//  Ridecell
//
//  Created by Vicki Lee on 6/18/19.
//  Copyright © 2019 Vicki Lee. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet var Map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var location = CLLocationCoordinate2DMake(
            37.779816,
            -122.395447)
        
        var span = MKCoordinateSpanMake(0.001, 0.001)
        
        var region = MKCoordinateRegion(center: location, span: span)
        
        Map.setRegion(region, animated: true)
        
        var annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "7LVF807"
        annotation.subtitle = "91 Mileage. 146,000M"
        
        Map.addAnnotation(annotation)

        func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
            let identifier = "MyPin"
            
            if annotation is MKUserLocation {
                return nil
            }
            
            var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier)
            
            if annotationView == nil {
                annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: identifier)
                annotationView?.canShowCallout = true
                annotationView?.image = UIImage(named: "/media/uploads/vehicles/display_pics/739c2443-5c6b-405a-9eb1-b70f30debe34.png")
                
            } else {
                annotationView?.annotation = annotation
            }
            
            return annotationView
        }
    
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

