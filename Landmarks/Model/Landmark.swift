//
//  Landmark.swift
//  Landmarks
//
//  Created by Mohammad Saifullah on 2/1/23.
//

import CoreLocation
import Foundation
import SwiftUI
struct Landmark: Hashable, Codable, Identifiable {
    let id: Int
    let name: String
    let park: String
    let state: String
    let description: String
    var isFavourite: Bool
    private let imageName: String
    var image: Image {
        Image(imageName)
    }

    private let coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }

    struct Coordinates: Hashable, Codable {
        let longitude: Double
        let latitude: Double
    }
}
