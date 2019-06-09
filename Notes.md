#  Notes

### Part 1 + 2: Create New Project, Explore the Canvas and Customize the Text View
```
var body: some View {
    Text("Hello Tim!")
        .font(.title) // these are called modifiers
            .color(.green) // each modifier creates a new view.
                    // There is an inherited option in the inspector of the canvas that will
                    // default the color to black. As if removing the .color(.green) modifier
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
            .padding() // padding room on VStack
        }
}
```
