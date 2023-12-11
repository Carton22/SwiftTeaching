import SwiftUI

struct FirstView: View {
    @State private var s: String = ""
    var week: [String] = ["1","2","3","4","5","6","7"]
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello! This is the first view!")
            Picker("Select a day", selection: $s) {
                ForEach(week, id: \.self) { day in
                    Text(day)
                }
            }
            .pickerStyle(PalettePickerStyle())
            switch(s){
            case "1":
                Text("🐓")
            case "2":
                Text("🐶")
            case "3":
                Text("🐱")
            default:
                Text("🌈")
            }
        }
    }
}
