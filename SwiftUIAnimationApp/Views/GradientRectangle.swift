//
//  GradientRectangle.swift
//  SwiftUIAnimationApp
//
//  Created by Anton Vassel on 31.05.2023.
//

import SwiftUI

struct GradientRectangle: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            
            ZStack {
                ForEach(0..<3) { iteration in
                    Rectangle()
                        .fill(
                            LinearGradient(
                                gradient: Gradient(colors: [.green, .blue]),
                                startPoint: UnitPoint(x: 0, y: 1),
                                endPoint: UnitPoint(x: 1, y: 0))
                        )
                        .rotationEffect(.degrees(Double(iteration) * 60))
                        .frame(
                            width: width * 0.7,
                            height: height * 0.7)                }
                Image(systemName: "airplane")
                    .resizable()
                    .rotationEffect(.degrees(-90))
                    .opacity(0.5)
                    .scaleEffect(0.7)
            }
        }
    }
}

struct GradientRectangle_Previews: PreviewProvider {
    static var previews: some View {
        GradientRectangle()
            .frame(width: 100, height: 100)
    }
}
