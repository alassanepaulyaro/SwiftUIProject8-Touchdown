//
//  ContentView.swift
//  SwiftUIProject8-Touchdown
//
//  Created by Yaro Paul  on 16/12/2024.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        ZStack {
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
                        color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)

                ScrollView(
                    .vertical, showsIndicators: false,
                    content: {
                        VStack(spacing: 0) {
                            FeaturedTabView()
                                .frame(
                                    height: UIScreen.main.bounds.width / 1.475
                                )  // This will fix the layout rendering priority issue by using the screen's aspect ratio.
                                .padding(.vertical, 20)

                            FooterView()
                                .padding(.horizontal)
                        }
                    })
            }
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        }
        .ignoresSafeArea(.all, edges: .top)
    }

}

#Preview {
    ContentView()
}
