import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack {
                ZStack{
                    Rectangle()
                        .contentShape(Capsule())
                        .foregroundColor(.orange)
                    NavigationLink("First View", destination: FirstView())
                        .font(.caption)
                        .bold()
                }
                ZStack{
                    Rectangle()
                        .contentShape(Capsule())
                        .foregroundColor(.green)
                    NavigationLink("Second View", destination: SecondView())
                        .font(.caption)
                        .bold()
                }
                ZStack{
                    Rectangle()
                        .contentShape(Capsule())
                        .foregroundColor(.blue)
                    NavigationLink("Third View", destination: ThirdView())
                        .font(.caption)
                        .bold()
                }
            }
        }.navigationTitle("Hello")
    }
}
