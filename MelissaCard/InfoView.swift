//
//  InfoView.swift
//  MelissaCard
//
//  Created by Melissa Elliston-Boyes on 22/11/2024.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(height: 50)
            .foregroundColor(.white)
            .overlay(
                HStack {
                    Image(systemName: imageName)
                        .foregroundColor(.green)
                    Text(text)
                        .font(.system(size: 16))
                        .foregroundColor(.black)
                }
            )
            .padding(EdgeInsets(top: 0, leading: 40, bottom: 10, trailing: 40))
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    InfoView(text: "Hello", imageName: "phone.fill")
}
