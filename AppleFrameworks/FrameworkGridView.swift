//
//  FrameworkGridView.swift
//  AppleFrameworks
//
//  Created by Thomas Prezioso Jr on 12/11/20.
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewmodel = FrameworkGridViewModel()
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns:columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewmodel.selectedFramework = framework
                            }
                    }
                }
            }.navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $viewmodel.isShowingDetailView) {
                FrameworkDetailView(framework: viewmodel.selectedFramework ?? MockData.sampleFramework, isShowingDetailView: $viewmodel.isShowingDetailView)
            // instead of using mockdata above we could make a empty state view to show here as the nil coalescing
            }
        }
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}

struct FrameworkTitleView: View {

    let framework: Framework
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width:90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
            
        }.padding()
        
    }
    
}
