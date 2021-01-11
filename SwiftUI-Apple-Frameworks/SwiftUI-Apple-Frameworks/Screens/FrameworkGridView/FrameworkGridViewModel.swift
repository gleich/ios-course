//
//  FrameworkGridViewModel.swift
//  SwiftUI-Apple-Frameworks
//
//  Created by Matthew Gleich on 1/10/21.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet { isShowingDetailView = true }
    }

    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]

    @Published var isShowingDetailView = false
}
