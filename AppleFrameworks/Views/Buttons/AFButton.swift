//
//  AFButton.swift
//  AppleFrameworks
//
//  Created by Thomas Prezioso Jr on 12/16/20.
//

import SwiftUI

struct AFButton: View {
    var title: String
    var url: URL
    var body: some View {
        Link(title, destination: url)
            .font(.title2)
            .frame(width: 280, height: 50)
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

//struct AFButton_Previews: PreviewProvider {
//    static var previews: some View {
//        AFButton(title: "Learn More")
//    }
//}
