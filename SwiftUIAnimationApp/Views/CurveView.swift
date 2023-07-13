//
//  CurveView.swift
//  SwiftUIAnimationApp
//
//  Created by Anton Vassel on 31.05.2023.
//

import SwiftUI

struct CurveView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let nearline = size  * 0.1
            let farLine = size * 0.9
            let middle = size / 2
            
            Path { path in
                path.move(to: CGPoint(x: middle, y: nearline))
                path.addQuadCurve(
                    to: CGPoint(x: farLine, y: middle),
                    control: CGPoint(x: size, y: 0)
                )
                path.addQuadCurve(
                    to: CGPoint(x: middle, y: farLine),
                    control: CGPoint(x: size, y: size)
                )
                path.addQuadCurve(
                    to: CGPoint(x: nearline, y: middle),
                    control: CGPoint(x: 0, y: size)
                )
                path.addQuadCurve(
                    to: CGPoint(x: middle, y: nearline),
                    control: CGPoint(x: 0, y: 0)
                )
            }
            .fill(
                RadialGradient(
                    gradient: Gradient(colors: [.white, .yellow]),
                    center: .center,
                    startRadius: width * 0.05,
                    endRadius: width * 0.6)
            )
            
            Path { path in
                path.addArc(
                    center: CGPoint(x: nearline, y: nearline),
                    radius: middle,
                    startAngle: .degrees(90),
                    endAngle: .degrees(0),
                    clockwise: true
                )
                path.addArc(
                    center: CGPoint(x: farLine, y: nearline),
                    radius: middle,
                    startAngle: .degrees(180),
                    endAngle: .degrees(90),
                    clockwise: true
                )
                path.addArc(
                    center: CGPoint(x: farLine, y: farLine),
                    radius: middle,
                    startAngle: .degrees(270),
                    endAngle: .degrees(180),
                    clockwise: true
                )
                path.addArc(
                    center: CGPoint(x: nearline, y: farLine),
                    radius: middle,
                    startAngle: .degrees(0),
                    endAngle: .degrees(270),
                    clockwise: true
                )
            }
            .stroke(Color.orange, lineWidth: 2)
        }
    }
}

struct CurveView_Previews: PreviewProvider {
    static var previews: some View {
        CurveView()
            .frame(width: 200, height: 200)
    }
}
