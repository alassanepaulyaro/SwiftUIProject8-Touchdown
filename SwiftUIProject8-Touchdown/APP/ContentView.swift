//
//  ContentView.swift
//  SwiftUIProject8-Touchdown
//
//  Created by Yaro Paul  on 16/12/2024.
//

import SwiftUI

struct ContentView: View {

    @EnvironmentObject var shop: Shop

    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack(spacing: 0) {

                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
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
                        .background(Color.white)
                        .shadow(
                            color: Color.black.opacity(0.05), radius: 5, x: 0,
                            y: 5)

                    ScrollView(
                        .vertical, showsIndicators: false,
                        content: {
                            VStack(spacing: 0) {
                                FeaturedTabView()
                                    .frame(
                                        height: UIScreen.main.bounds.width
                                            / 1.475
                                    )  // This will fix the layout rendering priority issue by using the screen's aspect ratio.
                                    .padding(.vertical, 20)

                                CategoryGridView()

                                TitleView(title: "Helmet")

                                LazyVGrid(
                                    columns: gridLayout, spacing: 15,
                                    content: {
                                        ForEach(products) { product in
                                            ProductItemView(product: product)
                                                .onTapGesture {
                                                    feedback.impactOccurred()
                                                    withAnimation(.easeOut) {
                                                        shop.selectedProduct = product
                                                        shop.showingProduct = true
                                                    }
                                                }
                                        }
                                    }
                                )
                                .padding(15)

                                TitleView(title: "Brands")
                                BrandGridView()

                                FooterView()
                                    .padding(.horizontal)
                            }
                        })
                }
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                ProducDetailView()
            }
        }
        .ignoresSafeArea(.all, edges: .top)
    }

}

#Preview {
    ContentView()
        .environmentObject(Shop())
}
