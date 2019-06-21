//
//  CustomPin.swift
//  Ridecell
//
//  Created by Vicki Lee on 6/20/19.
//  Copyright © 2019 Vicki Lee. All rights reserved.
//

import MapKit

class CustomPin: NSObject, MKAnnotation {
    var title: String?
    var subtitle: String?
    var coordinate: CLLocationCoordinate2D
    
    init(title:String, subtitle:String, coordinate:CLLocationCoordinate2D) {
        self.title = "7LVF807"
        self.subtitle = "91 Mileage. 146,000M"
        self.coordinate = coordinate
    }
}
