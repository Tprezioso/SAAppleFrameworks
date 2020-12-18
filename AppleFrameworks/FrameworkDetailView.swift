//
//  FrameworkDetailView.swift
//  AppleFrameworks
//
//  Created by Thomas Prezioso Jr on 12/16/20.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
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
            }
            .padding(.trailing)
            FrameworkTitleView(framework: framework)
            ScrollView {
                Text(framework.description)
                    .font(.body)
                    .padding()
            }
            
            Spacer()
            AFButton(title: "Learn More", url: URL(string: framework.urlString)!)
            Spacer()
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
            .preferredColorScheme(.dark)
    }
}
