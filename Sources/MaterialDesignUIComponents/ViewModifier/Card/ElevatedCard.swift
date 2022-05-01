//
//  ElevatedCard.swift
//  
//
//  Created by tichise on 2022/04/30.
//

import SwiftUI

/// MaterialデザインのCards（Elevated）を表示するのに使うViewModifier
/// https://m3.material.io/components/cards/overview
public struct ElevatedCard: ViewModifier {
    
    public init(cornerRadius: CGFloat) {
        self.cornerRadius = cornerRadius
    }
    
    public var cornerRadius: CGFloat // 角丸の半径
        
    public func body(content: Content) -> some View {
        content.background(RoundedRectangleFill.init(cornerRadius: cornerRadius))
    }
}

/// 角丸の四角形
private struct RoundedRectangleFill: View {
    var cornerRadius: CGFloat // 角丸の半径

    var body: some View {
        return RoundedRectangle(cornerRadius: cornerRadius).foregroundColor(.white).shadow(color: ColorConstants.shadowColor, radius: 1, x: 1, y: 1)
    }
}
