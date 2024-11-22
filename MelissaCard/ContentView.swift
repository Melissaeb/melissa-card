//
//  ContentView.swift
//  MelissaCard
//
//  Created by Melissa Elliston-Boyes on 22/11/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("Melissa")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200.0, height: 200.0)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                Text("Melissa Elliston-Boyes")
                    .font(Font.custom("Pacifico-Regular", size: 45))
                    .bold()
                    .foregroundColor(.white)
                    .padding(EdgeInsets(top: 0, leading: 50, bottom: 20, trailing: 50))
                    .multilineTextAlignment(.center)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 40, trailing: 0))
                InfoView(text: "+64 21 176 0911", imageName: "phone.fill")
                InfoView(text: "m.ellistonboyes@gmail.com", imageName: "envelope.fill")
            }
        }
    }
}

#Preview {
    ContentView()
}
