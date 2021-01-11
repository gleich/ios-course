//
//  FrameworkTitleView.swift
//  SwiftUI-Apple-Frameworks
//
//  Created by Matthew Gleich on 1/11/21.
//

import SwiftUI

struct FrameworkTitleView: View {
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

struct FrameworkTitleView_Previewsy: PreviewProvider {
    static var previews: some View {
        FrameworkTitleView(framework: MockData.sampleFramework)
    }
}
