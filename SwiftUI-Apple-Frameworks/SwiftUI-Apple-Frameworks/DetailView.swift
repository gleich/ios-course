//
//  DetailView.swift
//  SwiftUI-Apple-Frameworks
//
//  Created by Matthew Gleich on 1/4/21.
//

import SwiftUI

struct DetailView: View {
    let framework: Framework
    @Binding var isShowingDetailView: Bool

    var body: some View {
        VStack {
            HStack {
                Spacer()

                Button {
                    isShowingDetailView = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }.padding()
            Spacer()

            FrameworkView(framework: framework)

            Text(framework.description)
                .font(.body)
                .padding()

            Spacer()

            Button {
                print("Hello World!")
            } label: {
                AFButton(title: "Learn More")
            }.padding(.bottom, 30)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(
            framework: MockData.frameworks[0],
            isShowingDetailView: .constant(false)
        )
    }
}
