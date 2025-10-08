//
//  LineView.swift
//  TajMahal
//
//  Created by Jaouad on 23/09/2025.
//

import SwiftUI

struct LineView: View {
    // variable pour stocker les données de le vue WelcomeView
    let imageName : String
    let leftText : String
    let rightText : String
    var body: some View {
        HStack{
            Image(imageName)
            Text (leftText)
                .foregroundColor(.gray)
            Spacer()
            Text(rightText)
                .foregroundColor(.gray)
            
        }
        .padding(.horizontal,16)
    }
}

#Preview {
    
    LineView(imageName: "Horloge", leftText: "Mardi", rightText: "11h30 - 14h30・ 18h30 - 22h00")
    LineView(imageName: "Type", leftText: "Type de service", rightText:"A emporter")
    
    
}
