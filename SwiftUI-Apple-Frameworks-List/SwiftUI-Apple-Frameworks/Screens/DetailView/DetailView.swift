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
    @State private var isShowingSafariView = false

    var body: some View {
        VStack {
            Spacer()

            HStack {
                Image(framework.imageName)
                    .resizable()
                    .frame(width: 100, height: 100, alignment: .center)
            }

            Text(framework.description)
                .font(.body)
                .padding()

            Spacer()

            Button {
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More")
            }.padding(.bottom, 30)
        }
        .sheet(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
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
