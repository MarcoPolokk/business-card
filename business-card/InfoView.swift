//
//  InfoView.swift
//  business-card
//
//  Created by Paweł Kozioł on 19/01/2021.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 40)
            .frame(height: 50)
            .foregroundColor(.black).opacity(0.75)
            .overlay(HStack {
                Image(systemName: imageName).foregroundColor(.blue)
                Text(text).foregroundColor(Color(red: 0.20, green: 0.60, blue: 0.86)).bold()
            })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "+48 792524702", imageName: "phone")
            .previewLayout(.sizeThatFits)
    }
}
