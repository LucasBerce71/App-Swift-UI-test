//
//  ContentView.swift
//  SwiftUITest
//
//  Created by Lucas Jesus on 26/06/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (alignment: .center, spacing: 10) {
            Text("Olá")
                .bold()
                .font(.title)
                .foregroundColor(.black)
            Text("Seja Bem Vindo")
                .lineLimit(nil)
                .foregroundColor(.black)
                .font(.body)
                .multilineTextAlignment(.center)
            Image("testImage")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 300)
                .clipped()
                .clipShape(Circle())
                .shadow(color: .gray, radius: 10, x: 5, y: 5)
                .overlay(Circle().stroke(Color.red, lineWidth: 2))
        }.padding(20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13 Pro Max")
    }
}
