//
//  ContentView.swift
//  SwiftUI-Apple-Frameworks
//
//  Created by Matthew Gleich on 1/2/21.
//

import SwiftUI

struct FrameworkGridView: View {
//    let columns: [GridItem] = [
//        GridItem(.flexible()),
//        GridItem(.flexible()),
//        GridItem(.flexible()),
//    ]

    var body: some View {
//        NavigationView {
//            ScrollView {
//                LazyVGrid(columns: columns) {
//                    ForEach(MockData.frameworks) { framework in
//                        FrameworkView(framework: framework)
//                    }
//                }
//            }
//            .navigationTitle("🍎 Frameworks")
//        }
//    }
        DetailView(framework: MockData.frameworks[0])
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}

struct FrameworkView: View {
    let framework: Framework

    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)

            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }.padding()
    }
}
