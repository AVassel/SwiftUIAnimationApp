//
//  DarkAngelsView.swift
//  SwiftUIAnimationApp
//
//  Created by Anton Vassel on 05.06.2023.
//

import SwiftUI

struct DarkAngelsView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let wingsYPoint = [0.467, 0.708, 0.683, 0.608, 0.591, 0.642, 0.596, 0.552, 0.515, 0.552, 0.484, 0.462, 0.433, 0.433, 0.357, 0.357, 0.450]
            let leftWingXPoint = [0.457, 0.434, 0.379, 0.409, 0.381, 0.333, 0.297, 0.350, 0.329, 0.265, 0.234, 0.312, 0.310, 0.229, 0.215, 0.390]
            let rightWingXPoint = [0.540, 0.563, 0.620, 0.590, 0.618, 0.666, 0.702, 0.649, 0.670, 0.734, 0.765, 0.687, 0.689, 0.778, 0.784, 0.609]
            
            let colorG = Color(#colorLiteral(red: 0.03137254902, green: 0.168627451, blue: 0.05098039216, alpha: 1))
            let colorGr = Color(#colorLiteral(red: 0.02352941176, green: 0.431372549, blue: 0.1411764706, alpha: 1))
            
            // Shoulder pad
            Path { path in
                path.move(to: CGPoint(x: width * 0.021, y:height * 0.963))
                path.addLine(to: CGPoint(x: width * 0.979, y:height * 0.963))
                path.addQuadCurve(
                    to: CGPoint(x: width * 0.800, y:height * 0.223),
                    control: CGPoint(x: width * 0.943, y:height * 0.608)
                )
                path.addQuadCurve(
                    to: CGPoint(x: width * 0.180, y: height * 0.223),
                    control: CGPoint(x: width * 0.500, y: 0.000)
                )
                path.addQuadCurve(
                    to: CGPoint(x: width * 0.021, y:height * 0.963),
                    control: CGPoint(x: width * 0.067, y:height * 0.608)
                )
            }
            .fill(
                RadialGradient(colors: [colorG, colorGr],
                               center: .bottom,
                               startRadius: 150,
                               endRadius: 30)
                
            )
            Path { path in
                path.move(to: CGPoint(x: width * 0.071, y: height * 0.866))
                path.addLine(to: CGPoint(x: width * 0.94, y: height * 0.866))
                path.addQuadCurve(
                    to: CGPoint(x: width * 0.780, y: height * 0.220),
                    control: CGPoint(x: width * 0.913, y: height * 0.590)
                )
                path.addQuadCurve(
                    to: CGPoint(x: width * 0.219, y: height * 0.220),
                    control: CGPoint(x: width * 0.500, y: height * 0.034)
                )
                path.addQuadCurve(
                    to: CGPoint(x: width * 0.071, y: height * 0.866),
                    control: CGPoint(x: width * 0.086, y: height * 0.590)
                )
            }
            .stroke(Color(red: 0.4, green: 0.4, blue: 0.4), lineWidth: 2)
            
            // Sword
            Path { path in
                let swordXPoint = [0.500, 0.544, 0.514, 0.523, 0.540, 0.559, 0.588, 0.559, 0.540, 0.525, 0.544, 0.500, 0.451, 0.472, 0.457, 0.440, 0.409, 0.440, 0.457, 0.472, 0.485, 0.455, 0.500, 0.590]
                let swordYPoint = [0.150, 0.231, 0.260, 0.381, 0.381, 0.360, 0.394, 0.430, 0.411, 0.411, 0.717, 0.841, 0.717, 0.411, 0.411, 0.430, 0.394, 0.360, 0.381, 0.381, 0.260, 0.231, 0.150, 0.409]
                
                path.move(to: CGPoint(x: width * swordXPoint[0], y: height * swordYPoint[0]))
                for index in 1..<swordXPoint.count-1 {
                    path.addLine(to: CGPoint(
                        x: width * swordXPoint[index],
                        y: height * swordYPoint[index])
                    )
                }
            }
            .fill(Color(.white))
            .opacity(0.7)
            
            // Right wing
            Path { path in
                path.move(to: CGPoint(x: width * rightWingXPoint[0], y:height * wingsYPoint[0]))
                for index in 1..<wingsYPoint.count-1 {
                    path.addLine(to: CGPoint(
                        x: width * rightWingXPoint[index] ,
                        y: height * wingsYPoint[index])
                    )
                }
                path.addQuadCurve(
                    to: CGPoint(x: width * rightWingXPoint[0], y:height * wingsYPoint[0]),
                    control: CGPoint(x: width * rightWingXPoint.last!, y:height * wingsYPoint.last!))
            }
            .fill(Color(.white))
            .opacity(0.7)
            
            // Left wing
            Path { path in
                path.move(to: CGPoint(x: width * leftWingXPoint[0], y: height * wingsYPoint[0]))
                for index in 1..<wingsYPoint.count-1 {
                    path.addLine(to: CGPoint(
                        x: width * leftWingXPoint[index] ,
                        y: height * wingsYPoint[index])
                    )
                }
                path.addQuadCurve(
                    to: CGPoint(x: width * leftWingXPoint[0], y:height * wingsYPoint[0]),
                    control: CGPoint(x: width * leftWingXPoint.last!, y:height * wingsYPoint.last!))
            }
            .fill(Color(.white))
            .opacity(0.7)
        }
        .blinking(duration: 5)
    }
}

struct DarkAngelsView_Previews: PreviewProvider {
    static var previews: some View {
        DarkAngelsView()
            .frame(width: 250, height: 250)
    }
}
