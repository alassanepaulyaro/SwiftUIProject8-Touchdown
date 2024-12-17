//
//  BrandItemView.swift
//  SwiftUIProject8-Touchdown
//
//  Created by Yaro Paul  on 16/12/2024.
//

import SwiftUI

struct BrandItemView: View {
    
    let brand: Brand
    
    var body: some View {
      Image(brand.image)
        .resizable()
        .scaledToFit()
        .padding(3)
        .background(Color.white.cornerRadius(12))
        .background(
          RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1)
        )
    }
}

#Preview {
    BrandItemView(brand: brands[4])
}
