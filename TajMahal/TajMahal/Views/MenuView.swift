//
//  MenuView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

// Menu sous forme de liste
struct MenuView: View {
    // Référence vers le view model qui permet d'accéder aux tableaux d'entrées et de plats du menu
    let viewModel: ViewModel = ViewModel()
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
            
            List {
                Section {
                    ForEach(viewModel.apetizerArray) { dish in
                        NavigationLink(destination: DetailDish(dish: dish)) {
                            LineDish(dish: dish)
                        }
                    }
                } header: {
                    Text("Entrées")
                        .textCase(nil)
                        .foregroundColor(ColorPalette.gray.color)
                }
                
                Section {
                    ForEach(viewModel.mainCourseArray) { dish in
                        NavigationLink(destination: DetailDish(dish: dish)) {
                            LineDish(dish: dish)
                        }
                    }
                } header: {
                    Text("Plats Principaux")
                        .textCase(nil)
                        .foregroundColor(ColorPalette.gray.color)
                }
            }
            .navigationBarBackButtonHidden(true)
            .navigationTitle("Menu")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem (placement: .navigationBarLeading){
                    Button( action:{
                        dismiss()
                    }){
                        HStack{
                            Image(systemName: "chevron.left")
                        }
                        .foregroundColor(ColorPalette.black.color)
                    }
                }
            }
        
        .foregroundColor(ColorPalette.offwhite.color)
    }
}
#Preview {
    MenuView()
}
