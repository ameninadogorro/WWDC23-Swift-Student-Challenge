import SwiftUI

struct ContentView: View {
    
    @State var text = """
Hi, I'm Saci Pererê.
"""
    @State var nextScreenIsPresented = false
    @State var step = 0
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
            Image("sacifeliz")
                .resizable()
                .scaledToFit()
                .frame(width: 770, height: 770)
                .position(x:900, y:580)
            Text(text)
                .font(.custom(
                    "AmericanTypewriter",
                    fixedSize: 28))
                .frame(width:400, height: 400)
                .foregroundColor(.white)
                .position(x:630, y:330)
//                .bold()
            Text("Tap to continue")
                .font(.custom(
                    "AmericanTypewriter",
                    fixedSize: 22))
                .frame(width:320, height: 320)
                .foregroundColor(.white)
                .position(x:620, y:799)
               
        }
        .onChange(of: step) { newValue in
            if newValue == 1 {
                text = """
Ana asked me to help her in her journey learning about Brazilian folklore.
"""
            }
            if newValue == 2 {
                text = "First of all I need to tell you something…"
            }
            if newValue == 3 {
                text = "I’m also part of folklore, I have powers, I can create whirlwinds, and I like playing tricks on others."
            }
            if newValue == 4 {
                text = "During this time that we will spend together I hope to teach you a lot of things"
            }
            if newValue == 5 {
                text = "So here we go"
            }
            if newValue == 4 {
                nextScreenIsPresented = true
            }
        }
        .onTapGesture {
            step += 1
        }
        .navigationDestination(isPresented: $nextScreenIsPresented) {
            IaraSaciView()
        }
        .ignoresSafeArea()
    }
}
