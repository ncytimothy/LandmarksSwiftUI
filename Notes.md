#  Notes

### Part 1 + 2: Create New Project, Explore the Canvas and Customize the Text View
```
var body: some View { // View protocol
    Text("Hello Tim!")
        .font(.title) // these are called modifiers
            .color(.green) // each modifier creates a new view.
                    // There is an inherited option in the inspector of the canvas that will
                    // default the color to black. As if removing the .color(.green) modifier
}

struct ContentView_Previews : PreviewProvider { // PreviewProvider protcol
    static var previews: some View {
        ContentView()
    }
}
```
### Part 3: Combine Views Using Stacks
```
var body: some View {
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
}
```

### Part 4: Create a Custom Image View
```
struct CircleImage : View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle()) // circle to be used as a mask or a circle with stroke and fill
            .overlay(Circle().stroke(Color.white, lineWidth: 4)) // Overlay another circle on the main masking circle to add as a border
            .shadow(radius: 10) // Add shadow with 10 point radius
            }
}
```

### Part 5: Use UIKit and SwiftUI Views Together
```
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
```

### Part 6: Putting it all together...

```
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
```
