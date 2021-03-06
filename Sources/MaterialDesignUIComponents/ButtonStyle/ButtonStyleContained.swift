//
//  ButtonStyleContained.swift
//
import SwiftUI

/// 中が塗りつぶしになってる丸型のボタンスタイル
public struct ButtonStyleContained: ButtonStyle {
    public init(font: Font = .callout, forgroundColor: Color = .white, backgroundColor: Color = .blue,
        shadowColor: Color = .gray,
        padding: CGFloat = 5, isInfinity: Bool = false) {
        self.font = font
        self.forgroundColor = forgroundColor
        self.backgroundColor = backgroundColor
        self.shadowColor = shadowColor
        self.padding = padding
        self.isInfinity = isInfinity
    }
    
    var font: Font = .callout
    var forgroundColor: Color = .white
    var backgroundColor: Color = .blue
    var shadowColor: Color = .gray
    var padding: CGFloat = 5
    var isInfinity: Bool = false
    
    public func makeBody(configuration: Configuration) -> some View {
        ContainedButton(configuration: configuration, font: font, forgroundColor: forgroundColor, backgroundColor: backgroundColor,
            shadowColor: shadowColor,
            padding: padding, isInfinity: isInfinity)
    }

    struct ContainedButton: View {
        @Environment(\.isEnabled) var isEnabled
        let configuration: ButtonStyleContained.Configuration
        
        var font: Font = .callout
        var forgroundColor: Color = .white
        var backgroundColor: Color = .blue
        var shadowColor: Color
        var padding: CGFloat = 5
        var isInfinity: Bool = false

        var body: some View {
            configuration.label
                .frame(maxWidth: isInfinity ? .infinity : .none)
                .foregroundColor(forgroundColor)
                .padding(padding)
                .font(font)
                .background(isEnabled ? backgroundColor : backgroundColor.opacity(0.35))
                .cornerRadius(5)
                .shadow(color: shadowColor, radius: 1, x: 1, y: 1)
        }
    }
}

@available(iOS 14, *)
struct ButtonStyleContained_Previews: PreviewProvider {
    static var previews: some View {
        Button("Button") {
        }.buttonStyle(ButtonStyleContained())
    }
}
