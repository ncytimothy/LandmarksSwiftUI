//
//  CircleImage.swift
//  Landmarks
//
//  Created by Tim Ng on 6/9/19.
//  Copyright © 2019 Tim Ng. All rights reserved.
//

import SwiftUI

struct CircleImage : View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle()) // circle to be used as a mask or a circle with stroke and fill
            .overlay(Circle().stroke(Color.white, lineWidth: 4)) // Overlay another circle on the main masking circle to add as a border
            .shadow(radius: 10) // Add shadow with 10 point radius
    }
}

#if DEBUG
struct CircleImage_Previews : PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
#endif
