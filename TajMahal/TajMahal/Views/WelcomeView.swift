//
//  WelcomeView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

// Page d'accueil
struct WelcomeView: View {
    var body: some View {
        NavigationStack {
            Image("TajMahal")
                .frame(width: 335, height: 508.8)
            
            HStack {
                VStack (alignment:.leading) {
                    Text("Restaurant Indien")
                        .foregroundColor(ColorPalette.gray.color)
                    
                    Text("Taj Mahal")
                        .font(.title2)
                        .foregroundColor(ColorPalette.black.color)
                    
                }
                .padding()
                Spacer()
                
                    Image("Logo")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .padding()
            }
            
            VStack  {
                VStack (alignment:.leading) {
                    LineView(imageName: "Horloge", leftText: "Mardi", rightText: "11h30 - 14h30・ 18h30 - 22h00")
                    LineView(imageName: "Type", leftText: "Type de service", rightText:"A emporter")
                    LineView(imageName: "Adress", leftText: "12  Avenue de la Brique - 75010 Paris", rightText:"")
                    LineView(imageName: "Web", leftText: "www.tajmahal.fr", rightText:"")
                    LineView(imageName: "Phone", leftText: "06 12 34 56 78", rightText:"")
                }
                
                Spacer()
            }
            
            NavigationLink {
                MenuView()
            } label : {
                Text("Accéder au menu")
                    .font(.title2)
                    .foregroundColor(ColorPalette.white.color)
                    .padding()
                    .frame(width: 335, height: 40)
                    .background(ColorPalette.red.color)
                    .cornerRadius(10)
                    .bold()
            }
        }
    }
}

#Preview {
    WelcomeView()
}
