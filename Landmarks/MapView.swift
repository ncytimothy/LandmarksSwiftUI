//
//  MapView.swift
//  Landmarks
//
//  Created by Tim Ng on 6/9/19.
//  Copyright © 2019 Tim Ng. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView : UIViewRepresentable {
    // Wrapping UIViews in a SwiftUI view and conform to UIViewRepresentable protocol
        // REQUIRED
        // 1. makeUIView(context:) method that creates a view
        // 2. updateUIView(context:) method configuring  the view and respond to any changes
    func makeUIView(context: Context) -> MKMapView {
            MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        let coordinate =  CLLocationCoordinate2D(
            latitude: 34.011286, longitude: -116.166868) // Turtle Rock
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
    
}

#if DEBUG
struct MapView_Previews : PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
#endif
