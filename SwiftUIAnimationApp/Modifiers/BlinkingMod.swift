//
//  BlinkingMod.swift
//  SwiftUIAnimationApp
//
//  Created by Anton Vassel on 10.06.2023.
//

import SwiftUI

struct BlinkViewModifier: ViewModifier {
    
    let duration: Double
    @State private var blinking: Bool = false
    
    func body(content: Content) -> some View {
        content
            .opacity(blinking ? 0 : 1)
            .onAppear {
                withAnimation(.easeOut(duration: duration).repeatForever()) {
                    blinking = true
                }
            }
    }
}

extension View {
    func blinking(duration: Double = 0.75) -> some View {
        modifier(BlinkViewModifier(duration: duration))
    }
}
