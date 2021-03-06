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
    
    public init(cornerRadius: CGFloat, shadowColor: Color) {
        self.cornerRadius = cornerRadius
        self.shadowColor = shadowColor
    }
    
    public var cornerRadius: CGFloat // 角丸の半径
    public var shadowColor: Color
        
    public func body(content: Content) -> some View {
        content.background(RoundedRectangleFill.init(cornerRadius: cornerRadius, shadowColor: shadowColor))
    }
}

/// 角丸の四角形
private struct RoundedRectangleFill: View {
    var cornerRadius: CGFloat // 角丸の半径
    var shadowColor: Color

    var body: some View {
        return RoundedRectangle(cornerRadius: cornerRadius).foregroundColor(.white).shadow(color: shadowColor, radius: 1, x: 1, y: 1)
    }
}

@available(iOS 14, *)
struct ElevatedCard_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            Text("text").padding(10)
        }.modifier(ElevatedCard(cornerRadius: 5, shadowColor: .gray))
    }
}
