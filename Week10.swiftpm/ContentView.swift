import SwiftUI

struct ContentView: View {
    @State private var useRedText = false
    @State private var isClicked = false
    var body: some View {
        VStack(spacing:30){
            Button("Hello World") {
                // flip the Boolean between true and false
                useRedText.toggle()            
            }
            .foregroundStyle(useRedText ? .red : .blue)
            Button("See Me") {
                print("Button pressed!")
            }
            .padding()
            .background(Color(red: 0, green: 0, blue: 0.5))
            .clipShape(Capsule())
//            .frame(width: 190,height: 30)
            
            Button("Press Me") {
                print("Button pressed!")
                isClicked.toggle()
            }
            .padding()
            .background(.blue)
            .foregroundStyle(.white)
            .clipShape(Capsule())
            .scaleEffect(isClicked ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2), value: isClicked)
            
            Button("See Gradient"){}
                .padding()
                .background(LinearGradient(gradient: .init(colors: [.red,.orange]), startPoint: .bottom, endPoint: .top))
                .foregroundColor(.white)
                .clipShape(Capsule())
                .buttonStyle(.bordered)
            
            Button("Color Panel"){}
                .padding()
                .background(AngularGradient(colors: [.red, .yellow, .green, .blue, .purple, .red], center: .center))
                .foregroundColor(.white)
                .clipShape(Circle())
                .frame(width: 100, height: 100)
                .buttonStyle(.borderedProminent)
            
            Button{print("load image")}label: {
                Image("images")
            }
            .buttonStyle(.bordered)
        }
    }
}
