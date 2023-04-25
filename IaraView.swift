//
//  IaraView.swift
//  myPlayground
//
//  Created by Ana Raiany Guimarães Gomes on 2023-04-17.
//

import Foundation
import SwiftUI


struct IaraView: View {
    
    @State var nextScreenIsPresented = false
    
    @State var ouro1 = false
    @State var ouro2 = false
    @State var ouro3 = false
    
    @State var textoVisivel = false
    @State var textoVisivel2 = false
    
    @State var iara = "iaratriste"
    
    @State var baldeVisivel = false
    
    @State var estrelaVisivel = false
    
    var body: some View {
        ZStack {
            Image("mar")
                .resizable()
                .ignoresSafeArea()
            Image(iara)
                .resizable()
                .scaledToFit()
                .frame(width: 700, height: 700)
                .position(x:580, y:480)
            Button {
                ouro1 = true
            } label: {
                Image("Ouro1")
                    .resizable()
                    .scaledToFit()
                    .frame(width:   100, height: 100)
            }
            .position(x:400, y:100)
            .opacity(ouro1 == false ? 1 : 0.0)
            
            Button {
                ouro2 = true
            } label: {
                Image("Ouro2")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
            }
            .position(x:200, y:680)
            .opacity(ouro2 == false ? 1 : 0.0)
            
            Button {
                ouro3 = true
            } label: {
                Image("Ouro3")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
            }
            
            .position(x:940, y:580)
            .opacity(ouro3 == false ? 1 : 0.0)
            
            Image("Balde")
                .resizable()
                .scaledToFit()
                .frame(width: 450, height: 200)
                .position(x:900, y:380)
                .opacity(baldeVisivel == false ? 0 : 1)
            
            Image("Estrela")
                .resizable()
                .scaledToFit()
                .frame(width: 450, height: 200)
                .position(x:300, y:380)
                .opacity(baldeVisivel == false ? 0 : 1)
            
            Text(textoVisivel ? "You found it!!!                                        Thank you very much.           Receive this gift as a thank you" : "")
                .font(.custom(
                    "AmericanTypewriter",
                    fixedSize: 33))
                .frame(width:400, height: 400)
                .foregroundColor(.white)
                .position(x:650, y:150)
                
        
            Text(textoVisivel2 ? "Tap to continue": "")

                .font(.custom(
                    "AmericanTypewriter",
                    fixedSize: 22))
                .frame(width:320, height: 320)
                .foregroundColor(.white)
                .position(x:620, y:799)
                .navigationBarBackButtonHidden()
        }
        .onTapGesture {
            if iara == "iarafeliz" {
                nextScreenIsPresented = true
            }
        }
        .onChange(of: [ouro1, ouro2, ouro3]) { ouros in
           
            if ouros.allSatisfy({ $0 == true }) {
                iara = "iarafeliz"
                baldeVisivel = true
                estrelaVisivel = true
                textoVisivel = true
                textoVisivel2 = true
            }
        }
        .navigationDestination(isPresented: $nextScreenIsPresented) {
            SaciCuriosidadeView()
        }
        .navigationBarBackButtonHidden()
        .ignoresSafeArea()
    }
}
