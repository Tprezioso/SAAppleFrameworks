//
//  FrameworkDetailView.swift
//  AppleFrameworks
//
//  Created by Thomas Prezioso Jr on 12/16/20.
//

import SwiftUI

struct FrameworkDetailView: View {
    @ObservedObject var viewModel: FrameworkDetailViewModel
    
    var body: some View {
        VStack {
            DismissButton(isShowingDetailView: $viewModel.isShowingDetailView.wrappedValue)
            FrameworkTitleView(framework: viewModel.framework)
            ScrollView {
                Text(viewModel.framework.description)
                    .font(.body)
                    .padding()
            }
            
            Spacer()
            AFButton(title: "Learn More", url: URL(string: viewModel.framework.urlString)!)
            Spacer()
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(viewModel: FrameworkDetailViewModel(framework: MockData.sampleFramework,
                                                                isShowingDetailView: .constant(false)))
            .preferredColorScheme(.dark)
    }
}
