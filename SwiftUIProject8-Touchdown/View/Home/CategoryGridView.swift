//
//  CategoryGridView.swift
//  SwiftUIProject8-Touchdown
//
//  Created by Yaro Paul  on 16/12/2024.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
              LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: [], content: {
                Section(
                  header: SectionView(rotateClockwise: false),
                  footer: SectionView(rotateClockwise: true)
                ) {
                  ForEach(categories) { category in
                    CategoryItemView(category: category)
                  }
                }
              })
              .frame(height: 140)
              .padding(.horizontal, 15)
              .padding(.vertical, 10)
            })
    }
}

#Preview {
    CategoryGridView()
}
