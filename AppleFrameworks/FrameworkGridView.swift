//
//  FrameworkGridView.swift
//  AppleFrameworks
//
//  Created by Thomas Prezioso Jr on 12/11/20.
//

import SwiftUI

struct FrameworkGridView: View {
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    var body: some View {
        
        LazyVGrid(columns:columns) {
            FrameworkTitleView(name: "App Clips", imageNmae: "app-clip")
            FrameworkTitleView(name: "App Clips", imageNmae: "app-clip")
            FrameworkTitleView(name: "App Clips", imageNmae: "app-clip")

        }
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}

struct FrameworkTitleView: View {
    let name: String
    let imageNmae: String
    
    var body: some View {
        VStack {
            Image(imageNmae)
                .resizable()
                .frame(width:90, height: 90)
            Text(name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
            
        }
        
    }
    
}
