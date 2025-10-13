//
//  DetailDish.swift
//  TajMahal
//
//  Created by Jaouad on 24/09/2025.


import SwiftUI
// Ecran de  detail d'un plat
struct DetailDish: View {
    let dish: Dish
    @Environment(\.dismiss) var dismiss
    var body: some View {
        
        VStack (alignment: .center){
            ZStack(alignment: .topTrailing){
                Image(dish.imageName)
                    .resizable()
                    .frame(width: 335,height: 467)
                    .cornerRadius(10)
                    .clipped()
                    .cornerRadius(10)
                    .padding()
                // Le degré de piment
                SpiceIndicator(level: dish.spiceLevel)
                    .frame(width: 74 , height: 22)
                    .background(.white)
                    .cornerRadius(11)
                    .padding(.vertical, 32.0)
                    .padding(.horizontal, 32.0)
            }
            VStack(alignment:.leading,spacing: 10){
                // Section Allergènes
                VStack (alignment:.leading,spacing: 10){
                    Text("Allergènes:")
                        .font(.headline)
                    
                    Text (dish.allergens)
                        .font(.subheadline)
                        .fixedSize(horizontal: false, vertical: true)
                }
                // Ligne pour diviser les deux sections
                Divider()
                    .overlay(ColorPalette.lightGray.color)
                
                // Section ingrédients
                VStack(alignment:.leading,spacing: 10){
                    Text("Ingrédients:")
                        .font(.headline)
                    
                    Text(dish.ingredients)
                        .font(.subheadline)
                        .fixedSize(horizontal: false, vertical: true)
                }
            }
            .foregroundColor(.gray)
            .padding(.horizontal)
        }
        Spacer()
            .navigationBarBackButtonHidden(true)
        //.navigationTitle(dish.name)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem (placement: .navigationBarLeading) {
                    Button (action: { dismiss () })
                    {
                        HStack{
                            Image (systemName: "chevron.left" )
                            Text(dish.name)
                        }
                        .foregroundColor(ColorPalette.black.color)
                    }
                }
            }
    }
}



#Preview {
    NavigationView{
        DetailDish(dish: ViewModel().apetizerArray[1])
    }
}
