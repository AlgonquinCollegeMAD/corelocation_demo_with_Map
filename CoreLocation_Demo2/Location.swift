//
//  Location.swift
//  CoreLocation_Demo2
//
//  Created by Vladimir Cezar on 2024.11.14.
//


import MapKit

struct Location: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}
