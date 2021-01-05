//
//  AFButton.swift
//  SwiftUI-Apple-Frameworks
//
//  Created by Matthew Gleich on 1/4/21.
//

import SwiftUI

struct AFButton: View {
    let title: String

    var body: some View {
        Text("Learn More")
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

struct AFButton_Previews: PreviewProvider {
    static var previews: some View {
        AFButton(title: MockData.frameworks[0].name)
    }
}
