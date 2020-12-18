//
//  FrameworkGridViewModel.swift
//  AppleFrameworks
//
//  Created by Thomas Prezioso Jr on 12/17/20.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView = false
}
