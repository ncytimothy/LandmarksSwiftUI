//
//  ContentView.swift
//  Landmarks
//
//  Created by Tim Ng on 6/9/19.
//  Copyright © 2019 Tim Ng. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        VStack {
            MapView()
                .edgesIgnoringSafeArea(.top) // Ignores safeAreaLayoutGuides
                .frame(height: 300)
            // specifying only will expand the map view's width to its content (in our case, expand to all available space)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130) // Move the VStack text up by 130 (as if the bottomAnchor constraint constant as 130 between CircleImage and VStack container the VStack text
    
            VStack(alignment: .leading) { // align views in VerticalStack by leading edges
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer() // Spacer expands to make its containing view use all of the space in
                    // parent view. O/W: the views' sizes will be defined by the contents
                    Text("California")
                        .font(.subheadline)
                    }
                }
                .padding() // padding room on VStack
            
            Spacer()
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
