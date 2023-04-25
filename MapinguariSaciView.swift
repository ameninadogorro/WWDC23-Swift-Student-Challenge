//
//  MapinguariSaciView.swift
//  myPlayground
//
//  Created by Ana Raiany Guimarães Gomes on 2023-04-18.
//

import Foundation
import SwiftUI

struct MapinguariSaciView: View {
    
    @State var nextScreenIsPresented = false
    
    @State var textMapinguari = "Mapinguari??? You around here?"
    @State var step = 0
    
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
            Image("MapinguariAflito")
                .resizable()
                .scaledToFit()
                .frame(width: 1700, height: 1700)
                .position(x:300, y:720)
            
            Image("sacichocado")
                .resizable()
                .scaledToFit()
                .frame(width: 580, height: 580)
                .position(x:920, y:580)
            
            Text("Tap to continue")
                .font(.custom(
                    "AmericanTypewriter",
                    fixedSize: 22))
                .frame(width:320, height: 320)
                .foregroundColor(.white)
                .position(x:620, y:799)
            
            Text(textMapinguari)
                .font(.custom(
                    "AmericanTypewriter",
                    fixedSize: 28))
                .frame(width:400, height: 400)
                .foregroundColor(.white)
                .position(x:630, y:330)
            
            
        }
        .onChange(of: step) { newValue in
            if newValue == 1 {
                textMapinguari = "That's Mapinguari, he's like the bigfoot of Brazil."
            }
            if newValue == 2 {
                textMapinguari = "He protects the forest"
            }
            if newValue == 3 {
                textMapinguari = """
His size may scare you a little at first, but he’s a good guy.
"""
            }
            if newValue == 4 {
                textMapinguari = """
Saci

What happened, Mapinguari?
"""
            }
            if newValue == 5 {
                textMapinguari = """
Mapinguari:

Evil hunters set fire to the forest. I can't put it out by myself
"""
            }
            if newValue == 6 {
                textMapinguari = """
Mapinguari:

Can you guys help me find it?
"""
            }
            if newValue == 7 {
                textMapinguari = """
Saci:

It's absurd what they did.
Of course, Mapinguari, we will help you.

"""
            }
            if newValue == 8 {
                textMapinguari = """
Saci:

We can get a lot of water. Iara presented us with a bucket full!
   
"""
            }
            if newValue == 9 {
                textMapinguari = """
Saci:

We will find Iara, no need to be sad.

"""
            }
            if newValue == 10 {
                textMapinguari = """
Saci:

Let's help the forest together.

"""
            }
            if newValue == 11 {
                nextScreenIsPresented = true
            }
        }

        .navigationBarBackButtonHidden()
        .onTapGesture {
            step += 1
        }
        .navigationDestination(isPresented: $nextScreenIsPresented) {
            MapinguariView()
        }
        .ignoresSafeArea()
    }
}

