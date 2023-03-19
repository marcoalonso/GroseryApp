//
//  ShopItem.swift
//  GroseryApp
//
//  Created by Marco Alonso Rodriguez on 19/03/23.
//

import SwiftUI

struct ShopItem: View {
    
    var imageName: String
    var title: String
    var price: Double
    var color: Color
    var selfIndex: Int
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(color)
                .opacity(0.25)
                .frame(width: 170, height: 230)
            
            VStack {
                Image(imageName)
                    .resizable()
                    .frame(width: 80, height: 80)
                
                Text(title)
                Button() {
                    cartItems.append(shopItems[selfIndex])
                } label: {
                    Text("$\(String(format: "%.1f", price))")
                        .foregroundColor(.white)
                        .frame(width: 100, height: 40)
                        .background {
                            color
                        }
                        .cornerRadius(8)
                }
            }
            
        }
    }
}

struct ShopItem_Previews: PreviewProvider {
    static var previews: some View {
        ShopItem(imageName: "apple", title: "Apple", price: 4.56, color: .green, selfIndex: 0)
    }
}
