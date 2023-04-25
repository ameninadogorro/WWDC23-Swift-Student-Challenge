//
//  MapinguariView.swift
//  myPlayground
//
//  Created by Ana Raiany Guimarães Gomes on 2023-04-17.
//

import Foundation
import SwiftUI


struct MapinguariView: View {
    
    
    @State var baldeVisivel = true
    
    @State var mapinguariVisivel = false
    
    @State var Mapinguari = "MapinguariFeliz"
    
    @State var floresta = 0
    
    @State var finishedScene = false
    
    var body: some View {
        ZStack {
            Image("Floresta\(floresta)")
                .resizable()
                .ignoresSafeArea()
            Image("MapinguariFeliz")
                .resizable()
                .scaledToFit()
                .frame(width: 600, height: 600)
                .position(x:600, y:720)
                .opacity(mapinguariVisivel ? 1 : 0)
            Text("""
You have succeeded in saving the forest!
Receive two more stars as a thank you.
Your learning journey is over.
""")
            .font(.custom(
                "AmericanTypewriter",
                fixedSize: 28))
            .frame(width:800, height: 800)
            .foregroundColor(.white)
            .position(x:640, y:180)
            .bold()
            .opacity(finishedScene ? 1 : 0)
            
            Text("End of the game")
                .font(.custom(
                    "AmericanTypewriter",
                    fixedSize: 26))
                .frame(width:800, height: 800)
                .foregroundColor(.white)
                .position(x:600, y:330)
    
                .opacity(mapinguariVisivel ? 1 : 0)
            
            Image("Estrela2")
                .resizable()
                .scaledToFit()
                .frame(width: 450, height: 200)
                .position(x:300, y:380)
                .opacity(mapinguariVisivel ? 1 : 0)
            Image("Estrela3")
                .resizable()
                .scaledToFit()
                .frame(width: 450, height: 200)
                .position(x:900, y:380)
                .opacity(mapinguariVisivel ? 1 : 0)
            
            Text("""
Tap the bucket
to save the forest
""")
            .font(.custom(
                "AmericanTypewriter",
                fixedSize: 20))
            .frame(width:320, height: 320)
            .foregroundColor(.white)
            .position(x:620, y:750)
            .opacity(finishedScene ? 0 : 1)
            
            Button {
                if finishedScene == false {
                    floresta += 1
                }
                
            } label: {
                Image("Balde")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
            }
            .position(x:640, y:630)
            .opacity(finishedScene ? 0 : 1)
            .navigationBarBackButtonHidden()
            .ignoresSafeArea()
            
        }
        .onChange(of: floresta) { ouros in
            if floresta == 4 {
                Mapinguari = "MapinguariFeliz"
                floresta = 4
                mapinguariVisivel = true
                baldeVisivel = false
                finishedScene = true
            }

        }
        .navigationBarBackButtonHidden()
        
    }
}
