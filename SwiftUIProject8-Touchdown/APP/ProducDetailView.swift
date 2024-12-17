//
//  ProducDetailView.swift
//  SwiftUIProject8-Touchdown
//
//  Created by Yaro Paul  on 16/12/2024.
//

import SwiftUI

struct ProducDetailView: View {
    
    @EnvironmentObject var shop: Shop

    var body: some View {
        VStack(
            alignment: .leading, spacing: 5,
            content: {
                // NAVBAR
                NavigationBarDetailView()
                    .padding(.horizontal)
                    .padding(
                        .top,
                        {
                            if let windowScene = UIApplication.shared
                                .connectedScenes.first as? UIWindowScene,
                                let window = windowScene.windows.first
                            {
                                return window.safeAreaInsets.top
                            }
                            return 0
                        }()
                    )

                // HEADER
                HeaderDetailView()
                    .padding(.horizontal)

                // DETAIL TOP PART
                TopPartDetailView()
                    .padding(.horizontal)
                    .zIndex(1)

                // DETAIL BOTTOM PART
                VStack(
                    alignment: .center, spacing: 0,
                    content: {
                        // RATINGS + SIZES
                        RatingsSizesDetailView()
                            .padding(.top, -20)
                            .padding(.bottom, 10)

                        // DESCRIPTION
                        ScrollView(
                            .vertical, showsIndicators: false,
                            content: {
                                Text(shop.selectedProduct?.description ?? sampleProduct.description)
                                    .font(.system(.body, design: .rounded))
                                    .foregroundColor(.gray)
                                    .multilineTextAlignment(.leading)
                            })

                        // QUANTITY + FAVOURITE
                        QuantityFavouriteDetailView()
                            .padding(.vertical, 10)

                        // ADD TO CART
                        AddToCartDetailView()
                            .padding(.bottom, 20)
                    }
                )
                .padding(.horizontal)
                .background(
                    Color.white
                        .clipShape(CustomShape())
                        .padding(.top, -105)
                )
            }
        )
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? sampleProduct.red,
                green: shop.selectedProduct?.green ?? sampleProduct.green,
                blue: shop.selectedProduct?.blue ?? sampleProduct.blue
            ).ignoresSafeArea(.all, edges: .all)  
        )
    }
}

#Preview {
    ProducDetailView()
        .environmentObject(Shop())
        .background(Color.accentColor)
}
