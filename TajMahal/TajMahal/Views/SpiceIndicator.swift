//
//  SpiceIndicator.swift
//  TajMahal
//
//  Created by Jaouad on 02/10/2025.
//

import SwiftUI
// Composant pour calculer le niveau de piment.
// Permet d'afficher l'image de piment
struct SpiceIndicator: View {
    let level: SpiceLevel
    
    var body: some View {
        HStack(spacing: 8) {
            ForEach(1...3, id: \.self) { index in
                Image(index <= level.rawValue ? "yesPiment" : "noPiment")
                    .resizable()
                    .frame(width: 12, height: 12)
                
            }
        }
    }
}

#Preview {
    SpiceIndicator(level: .hot)
    
}
