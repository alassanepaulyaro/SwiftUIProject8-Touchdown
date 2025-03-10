//
//  CustomShape.swift
//  SwiftUIProject8-Touchdown
//
//  Created by Yaro Paul  on 16/12/2024.
//

import SwiftUI

struct CustomShape: Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect, byRoundingCorners: [.topLeft, .topRight],
            cornerRadii: CGSize(width: 35, height: 35))

        return Path(path.cgPath)
    }
}

#Preview {
    CustomShape()
}
