//
//  Award.swift
//  SwiftUIAnimationApp
//
//  Created by Anton Vassel on 02.06.2023.
//

import SwiftUI

struct Award {
    let awardView: AnyView
    let title: String
    let awarded: Bool
    
    static func getAwards() -> [Award] {
        [
            Award(
                awardView: AnyView(GradientRectangle()),
                title: "Gradient Rectangle",
                awarded: false
            ),
            Award(
                awardView: AnyView(PathView()),
                title: "Path View",
                awarded: true
            ),
            Award(
                awardView: AnyView(CurveView()),
                title: "Curve View",
                awarded: true
            ),
            Award(
                awardView: AnyView(DarkAngelsView()),
                title: "Dark Angels",
                awarded: true)
        ]
    }
}
