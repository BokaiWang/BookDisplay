//
//  BookView.swift
//  BookDisplay
//
//  Created by 王柏凱 on 2021-12-06.
//

import SwiftUI

struct BookView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(color: .gray, radius: 5, x: -5, y: 5)
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Text("Amazing Words")
                        .font(.title)
                        .bold()
                    Spacer()
                    Image(systemName: "star")
                        .resizable()
                        .frame(width: 25, height: 25)
                }
                Text("Sir Prise Party")
                    .italic()
                Image("cover1")
                    .resizable()
                    .scaledToFill()
                
            } // VStack
            .padding()
            
        } // ZStack
        .frame(width: 350, height: 500)
        .foregroundColor(.black)
        
        
    }
}

struct BookView_Previews: PreviewProvider {
    static var previews: some View {
        BookView()
    }
}
