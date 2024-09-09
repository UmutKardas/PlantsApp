//
//  BottomRoundedRectange.swift
//  PlantsAppExample
//
//  Created by Hüseyin Umut Kardaş on 1.09.2024.
//

import SwiftUI

struct BottomRoundedRectange: Shape {
    var cornerRadius: CGFloat
    var corner: UIRectCorner

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect,
                                byRoundingCorners: corner,
                                cornerRadii: CGSize(width: cornerRadius, height: cornerRadius))
        return Path(path.cgPath)
    }
}
