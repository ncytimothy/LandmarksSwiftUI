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
        Text("Hello Tim!")
            .font(.title) // these are called modifiers
            .color(.green) // each modifier creates a new view.
                // There is an inherited option in the inspector of the canvas that will
                // default the color to black. As if removing the .color(.green) modifier
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
