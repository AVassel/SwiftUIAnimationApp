//
//  StarterView.swift
//  SwiftUIAnimationApp
//
//  Created by Anton Vassel on 31.05.2023.
//

import SwiftUI

struct StarterView: View {
    var body: some View {
        TabView {
            MainView()
                .tabItem {
                    Image(systemName: "rosette")
                    Text("Main")
                }
            
            AwardsView()
                .tabItem {
                    Image(systemName: "pencil.and.outline")
                    Text("Awards")
                }
        }
    }
}

struct StarterView_Previews: PreviewProvider {
    static var previews: some View {
        StarterView()
    }
}
