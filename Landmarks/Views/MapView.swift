//
//  MapView.swift
//  Landmarks
//
//  Created by Mohammad Saifullah on 28/12/22.
//

import MapKit
import SwiftUI

struct MapView: View {
    let coordinates: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion()
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                setRegion(coordinates)
            }
    }

    private func setRegion(_ coordinates:CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinates,
            span: MKCoordinateSpan(
                latitudeDelta: 0.05,
                longitudeDelta: 0.05
            )
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinates: landmarks[1].locationCoordinate)
    }
}
