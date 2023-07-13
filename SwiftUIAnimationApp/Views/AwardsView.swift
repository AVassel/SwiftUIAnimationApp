//
//  AwardsView.swift
//  SwiftUIAnimationApp
//
//  Created by Anton Vassel on 31.05.2023.
//

import SwiftUI

//struct AwardsView: View {
//    let awards = Award.getAwards()
//    let columns = [GridItem(.adaptive(minimum: 160, maximum: 200))]
//    var activeAwards: [Award] {
//        awards.filter { $0.awarded }
//    }
//
//    var body: some View {
//        NavigationView {
//            ScrollView {
//                LazyVGrid(columns: columns) {
//                    ForEach(activeAwards, id: \.title) { award in
//                        VStack {
//                            award.awardView
//                            Text(award.title)
//                        }
//                    }
//                }
//            }
//            .navigationTitle("Your awards: \(activeAwards.count)")
//        }
//    }
//}

struct AwardsView: View {
    let awards = Award.getAwards()
    var activeAwards: [Award] {
        awards.filter { $0.awarded }
    }
    
    var body: some View {
        NavigationView {
            VStack {
                CustomGridView(items: activeAwards, columns: 2) { sideLength, award in
                    VStack (alignment: .center, spacing: 1) {
                        award.awardView
                        Text(award.title)
                    }
//                    .padding()
                    .frame(width: sideLength, height: sideLength)
                }
            }
            .navigationTitle("Your awards: \(activeAwards.count)")
        }
    }
}

struct AwardsView_Previews: PreviewProvider {
    static var previews: some View {
        AwardsView()
    }
}
