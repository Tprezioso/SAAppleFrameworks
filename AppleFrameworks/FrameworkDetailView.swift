//
//  FrameworkDetailView.swift
//  AppleFrameworks
//
//  Created by Thomas Prezioso Jr on 12/16/20.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    
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
            Button {
                
            } label: {
                AFButton(title: "Learn More")
            }
            Spacer()
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework)
            .preferredColorScheme(.dark)
    }
}
