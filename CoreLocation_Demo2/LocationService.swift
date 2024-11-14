//
//  LocationService.swift
//  CoreLocation_Demo2
//
//  Created by Vladimir Cezar on 2024.11.14.
//

import SwiftUI
import CoreLocation

class LocationService: NSObject, ObservableObject, CLLocationManagerDelegate {
  private let locationManager = CLLocationManager()
  
  @Published var location: CLLocation? = nil
  
  override init() {
    super.init()
    locationManager.delegate = self
    locationManager.requestWhenInUseAuthorization()
    locationManager.startUpdatingLocation()
  }
  
  func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
    location = locations.last
  }
}
