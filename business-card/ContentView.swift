//
//  ContentView.swift
//  business-card
//
//  Created by Paweł Kozioł on 17/01/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.20, green: 0.60, blue: 0.86).edgesIgnoringSafeArea(.all)
            VStack {
                Image("photo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250, height: 250)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/.inset(by: 17))
                    .overlay(Circle().inset(by: 17).stroke(Color.black, lineWidth: 5))
                Text("Paweł Kozioł ")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.black)
                Text("iOS Developer")
                    .font(Font.custom("Pacifico-Regular", size: 25))
                    .foregroundColor(.black)
                Divider()
                InfoView(text: "+48 792524702", imageName: "phone")
                InfoView(text: "inzkoziolpawel@gmail.com", imageName: "envelope")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
