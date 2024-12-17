//
//  NavigationBarDetailView.swift
//  SwiftUIProject8-Touchdown
//
//  Created by Yaro Paul  on 16/12/2024.
//

import SwiftUI

struct NavigationBarDetailView: View {

    @EnvironmentObject var shop: Shop

    var body: some View {
        HStack {
            Button(
                action: {
                    withAnimation(.easeIn) {
                        feedback.impactOccurred()
                        shop.selectedProduct = nil
                        shop.showingProduct = false
                    }
                },
                label: {
                    Image(systemName: "chevron.left")
                        .font(.title)
                        .foregroundColor(.white)
                })

            Spacer()

            Button(
                action: {},
                label: {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.white)
                })
        }
    }
}

#Preview {
    NavigationBarDetailView()
        .environmentObject(Shop())
        .background(Color.gray)
}
