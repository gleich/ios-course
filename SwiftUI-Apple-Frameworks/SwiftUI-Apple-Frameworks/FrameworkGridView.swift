//
//  ContentView.swift
//  SwiftUI-Apple-Frameworks
//
//  Created by Matthew Gleich on 1/2/21.
//

import SwiftUI

struct FrameworkGridView: View {
    var body: some View {
        VStack {
            FrameworkView(name: "App Clips", imageName: "app-clip")
        }
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}

struct FrameworkView: View {
    let name: String
    let imageName: String
    
    var body: some View {
        VStack {
            Image("app-clip")
                .resizable()
                .frame(width: 90, height: 90)
            
            Text("App Clips")
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }
    }
}
