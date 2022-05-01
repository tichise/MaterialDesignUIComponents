//
//  SwiftUIView.swift
//  
//
//  Created by tichise on 2022/04/30.
//

import SwiftUI

/// MaterialデザインのCards（Filled）を表示するのに使うViewModifier
/// https://m3.material.io/components/cards/overview
public struct FilledCard: ViewModifier {
    
    public init(cornerRadius: CGFloat, backgroundColor: Color) {
        self.cornerRadius = cornerRadius
        self.backgroundColor = backgroundColor
    }

    public var cornerRadius: CGFloat // 角丸の半径
    public var backgroundColor: Color
        
    public func body(content: Content) -> some View {
        content.background(backgroundColor)
            .cornerRadius(cornerRadius)
    }
}

struct FilledCard_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            Text("text").padding(10)
        }.modifier(FilledCard(cornerRadius: 5, backgroundColor: .yellow))
    }
}
