//
//  ButtonStyleOutlined.swift
//
import SwiftUI

/// 中が透過になってる丸型のボタンスタイル
public struct ButtonStyleOutlined: ButtonStyle {
    public init(font: Font = .callout, padding: CGFloat = 5, isInfinity: Bool = false, forgroundColor: Color = .black, backgroundColor: Color = .clear, strokeColor: Color, cornerRadius: CGFloat = 5) {
        self.font = font
        self.padding = padding
        self.isInfinity = isInfinity
        self.strokeColor = strokeColor
        self.forgroundColor = forgroundColor
        self.backgroundColor = backgroundColor
        self.cornerRadius = cornerRadius
    }
    
    var font: Font = .callout
    var strokeColor: Color = .blue
    var forgroundColor: Color = .black
    var backgroundColor: Color = .clear
    var padding: CGFloat = 5
    var isInfinity: Bool = false
    var cornerRadius: CGFloat = 10 // 角丸の半径
    
    public func makeBody(configuration: Configuration) -> some View {
        OutlinedButton(configuration: configuration, font: font, padding: padding, isInfinity: isInfinity, cornerRadius: cornerRadius, strokeColor: strokeColor, forgroundColor: forgroundColor, backgroundColor: backgroundColor)
    }

    struct OutlinedButton: View {
        @Environment(\.isEnabled) var isEnabled
        let configuration: ButtonStyleOutlined.Configuration
        
        var font: Font = .callout
        var padding: CGFloat = 5
        var isInfinity: Bool = false
        var cornerRadius: CGFloat = 10 // 角丸の半径
        var strokeColor: Color = .blue
        var forgroundColor: Color = .black
        var backgroundColor: Color = .clear
        
        var body: some View {
            configuration.label
                .font(font)
                .opacity(configuration.isPressed ? 0.2 : 1.0)
                .padding(padding)
                .frame(maxWidth: isInfinity ? .infinity : .none)
                .foregroundColor(forgroundColor)
                .background(RoundedRectangleFill.init(cornerRadius: cornerRadius, fillColor: backgroundColor))
                .overlay(
                        RoundedRectangle(cornerRadius: cornerRadius)
                            .stroke(strokeColor, lineWidth: 1)
                )
                .scaleEffect(x: 1, y: 1, anchor: .center)
                .animation(.spring(response: 0.2, dampingFraction: 0.9, blendDuration: 0))
        }
    }
    
    /// 角丸の四角形
    private struct RoundedRectangleFill: View {
        var cornerRadius: CGFloat // 角丸の半径
        var fillColor: Color // Fillする色
        
        var body: some View {
            return RoundedRectangle(cornerRadius: cornerRadius).fill(fillColor)
        }
    }
}

struct ButtonStyleOutlined_Previews: PreviewProvider {
    static var previews: some View {
        Button("Button") {
        }.buttonStyle(ButtonStyleOutlined(strokeColor: .black))
    }
}
