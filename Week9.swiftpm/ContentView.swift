import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 1.0
    var body: some View {
        VStack {
            Spacer()
            ZStack{
                Button("") {
                    //             animationAmount += 1
                }
                .padding(50)
                .background(.red)
                .clipShape(.circle)
                .scaleEffect(animationAmount)
                //                .blur(radius: animationAmount)
                //                .animation(.default, value: animationAmount)
                //                .animation(.linear(duration: 0.5), value: animationAmount)
                //                .animation(.smooth, value: animationAmount)
                //                .animation(.spring, value: animationAmount)
                //                .animation(.easeInOut(duration: 1).delay(2), value: animationAmount)
                .overlay(
                    Circle()
                        .stroke(.yellow)
                        .scaleEffect(animationAmount)
                        .opacity(2 - animationAmount)
                )
                .animation(.easeInOut(duration: 1).repeatCount(3, autoreverses: true), value: animationAmount)
                .onAppear {
                    animationAmount = 2
                }
                Text("Tap me")
                .foregroundStyle(.white)
                .bold()
                .font(.title)
            }
            Spacer()
            Stepper("Scale amount", value: $animationAmount.animation(), in: 1...10)
                .font(.largeTitle)
                .bold()
                .padding(20)
            Spacer()
        }

    }
}
