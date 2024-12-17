//
//  AddToCartDetailView.swift
//  SwiftUIProject8-Touchdown
//
//  Created by Yaro Paul  on 16/12/2024.
//

import SwiftUI

struct AddToCartDetailView: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        Button(
            action: {
                feedback.impactOccurred() 
            },
            label: {
                Spacer()
                Text("Add to cart".uppercased())
                    .font(.system(.title2, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Spacer()
            }
        )
        .padding(15)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? sampleProduct.red,
                green: shop.selectedProduct?.green ?? sampleProduct.green,
                blue: shop.selectedProduct?.blue ?? sampleProduct.blue
            )
        )
        .clipShape(Capsule())
    }
}

#Preview {
    AddToCartDetailView()
        .environmentObject(Shop())
}
