//
//  ViewController.swift
//  Ridecell
//
//  Created by Vicki Lee on 6/18/19.
//  Copyright © 2019 Vicki Lee. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    var pin: CustomPin!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView.delegate = self
        mapView.mapType = .hybrid
        
        let coordinate = CLLocationCoordinate2DMake(37.779816, -122.395447)
        let span = MKCoordinateSpanMake(0.001, 0.001)
        
        let region = MKCoordinateRegion(center: coordinate, span: span)
        mapView.setRegion(region, animated: true)

//        pin = CustomPin(title: "7LVF807", subtitle: "91 Mileage. 146,000M", coordinate: coordinate)
        
        let pin = CustomPin(title: "7LVF807", subtitle: "91 Mileage. 146,000M", coordinate: coordinate)
//        pin.coordinate = coordinate
//      pin.title = "7LVF807"
//    pin.subtitle = "91 Mileage. 146,000M"
        
        
        mapView.addAnnotation(pin)
        
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        let annotationView = MKAnnotationView(annotation: pin, reuseIdentifier: "7LVF807")
        annotationView.image = UIImage(named: "car1")
        let transform = CGAffineTransform(scaleX:0.5, y:0.5)
        annotationView.transform = transform
        
        annotationView.canShowCallout = true
        
        return annotationView
    }
    
}
