//
//  FrameworkDetailViewModel.swift
//  AppleFrameworks
//
//  Created by Thomas Prezioso Jr on 2/3/21.
//

import SwiftUI

final class FrameworkDetailViewModel: ObservableObject {
    
    let framework: Framework
    var isShowingDetailView: Binding<Bool>

    init(framework: Framework, isShowingDetailView: Binding<Bool>) {
        self.framework = framework
        self.isShowingDetailView = isShowingDetailView
    }
}
