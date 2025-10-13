//
//  LineDish.swift
//  TajMahal
//
//  Created by Jaouad on 23/09/2025.
//
//

import SwiftUI
// Ecran d'affichage d'un plat en ligne.
struct LineDish: View {
    let dish : Dish
    var body: some View {
        
        HStack {
            Image (dish.imageName)
                .resizable()
                .frame(width:112, height: 86)
                .cornerRadius(10)
            Spacer()
            
            VStack (alignment: .leading) {
                Text (dish.name)
                    .font(.headline)
                Spacer().frame(height: 10)
                
                Text (dish.description)
                    .font(.subheadline)
            // calcul de taux de piment
                HStack {
                    Text(dish.price)
                    Spacer()
                    SpiceIndicator(level: dish.spiceLevel)
                }
            }
            .foregroundColor(ColorPalette.gray.color)
        }
    }
}

#Preview {
    LineDish(dish: ViewModel().apetizerArray[0])
}
