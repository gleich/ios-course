//
//  ContentView.swift
//  SwiftUI-Apple-Frameworks
//
//  Created by Matthew Gleich on 1/2/21.
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()

    var body: some View {
        NavigationView {
            List {
                ForEach(MockData.frameworks) { framework in
                    NavigationLink(destination: DetailView(framework: framework, isShowingDetailView: $viewModel.isShowingDetailView), label: {
                        FrameworkTitleView(framework: framework)
                    })
                }
            }
            .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                DetailView(
                    framework: viewModel.selectedFramework ?? MockData.sampleFramework,
                    isShowingDetailView: $viewModel.isShowingDetailView
                )
            }
        }
        .accentColor(Color(.label))
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}
