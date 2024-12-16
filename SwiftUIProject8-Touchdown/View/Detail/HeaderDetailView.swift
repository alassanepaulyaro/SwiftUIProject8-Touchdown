//
//  HeaderDetailView.swift
//  SwiftUIProject8-Touchdown
//
//  Created by Yaro Paul  on 16/12/2024.
//

import SwiftUI

struct HeaderDetailView: View {

    var body: some View {
        VStack(
            alignment: .leading, spacing: 6,
            content: {
                Text("Protective Gear")

                Text(sampleProduct.name)
                    .font(.largeTitle)
                    .fontWeight(.black)
            }
        )
        .foregroundColor(.white)
    }
}

#Preview {
    HeaderDetailView()
        .background(Color.gray)
}
