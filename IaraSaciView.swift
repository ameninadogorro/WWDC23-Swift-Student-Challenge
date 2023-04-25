//
//  IaraSaciView.swift
//  myPlayground
//
//  Created by Ana Raiany Guimarães Gomes on 2023-04-17.
//

import Foundation
import SwiftUI

struct IaraSaciView: View {
    
    @State var nextScreenIsPresented = false
    
    @State var textIara = "What a surprise, Iara"
    @State var step = 0
    
    
//    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ZStack {
            
            Image("background")
                .resizable()
            Image("iaratriste")
                .resizable()
                .scaledToFit()
                .frame(width: 680, height: 680)
                .position(x:300, y:590)
            Image("sacichocado")
                .resizable()
                .scaledToFit()
                .frame(width: 580, height: 580)
                .position(x:920, y:580)
            
            Text(textIara)
                .font(.custom(
                    "AmericanTypewriter",
                    fixedSize: 28))
                .frame(width:400, height: 400)
                .foregroundColor(.white)
                .position(x:630, y:330)
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
                textIara = "This is Iara, she’s also part of folklore"
            }
            if newValue == 2 {
                textIara = "She is a mermaid"
            }
            if newValue == 3 {
                textIara = """
It seems that she’s feeling sad.

"""
            }
            if newValue == 4 {
                textIara = """
Saci:

What happened Iara?

"""
            }
            if newValue == 5 {
                textIara = """
Iara:

I lost the pendants from my necklace and can't find them anywhere. They’re very special to me, because they were a gift from Ana
"""
            }
            if newValue == 6 {
                textIara = """
Iara:

Can you guys help me find them?

"""
            }
            if newValue == 7 {
                textIara = """
Saci:

Sure Iara, we'll help you.
But what do they look like?

"""
            }
            if newValue == 8 {
                textIara = """
Iara:

They are yellow like gold and have the letters A,N,A.

"""
            }
            if newValue == 9 {
                textIara = """
Saci:

We will find them Iara, no need to be sad.

"""
            }
            if newValue == 10 {
                textIara = """
Saci:

Let's dive into this first adventure together.
"""
            }
            if newValue == 11 {
                nextScreenIsPresented = true
            }
        }

       
        .onTapGesture {
            step += 1
        }
        .navigationDestination(isPresented: $nextScreenIsPresented) {
            IaraView()
        }
        .navigationBarBackButtonHidden()
        .ignoresSafeArea()
    }
}
