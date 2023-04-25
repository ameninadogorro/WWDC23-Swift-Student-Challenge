//
//  SaciCuriosidadeView.swift
//  myPlayground
//
//  Created by Ana Raiany Guimarães Gomes on 2023-04-19.
//

import Foundation
import SwiftUI


struct SaciCuriosidadeView: View {
    
    @State var text = """
 Curiosity about folklore
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
                .frame(width: 750, height: 710)
                .position(x:900, y:580)
            Text(text)
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
                text = """
Did you know that the term folklore is a combination of the English words folk and lore.
It literally means "knowledge of the people" or "what the people do".
"""
            }
            
            if newValue == 2 {
                nextScreenIsPresented = true
            }
        }
        .onTapGesture {
            step += 1
        }
        .navigationDestination(isPresented: $nextScreenIsPresented) {
            MapinguariSaciView()
        }
        .navigationBarBackButtonHidden()
        .ignoresSafeArea()
    }
}


