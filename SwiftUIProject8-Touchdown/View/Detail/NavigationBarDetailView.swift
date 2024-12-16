//
//  NavigationBarDetailView.swift
//  SwiftUIProject8-Touchdown
//
//  Created by Yaro Paul  on 16/12/2024.
//

import SwiftUI

struct NavigationBarDetailView: View {

  var body: some View {
    HStack {
      Button(action: {}, label: {
        Image(systemName: "chevron.left")
          .font(.title)
          .foregroundColor(.white)
      })
      
      Spacer()
      
      Button(action: {}, label: {
        Image(systemName: "cart")
          .font(.title)
          .foregroundColor(.white)
      })
    }
  }
}

#Preview {
    NavigationBarDetailView()
        .background(Color.gray)
}
