//
//  BookRatingView.swift
//  BookDisplay
//
//  Created by 王柏凱 on 2021-12-06.
//

import SwiftUI

struct BookRatingView: View {
    @State var selectionIndex = 1
    var body: some View {
        VStack(spacing:20) {
            HStack {
                Text("Amazing Words")
                    .bold()
                .font(.largeTitle)
                Spacer()
            }
            .padding(.leading)
            .padding(.bottom, 30)
            Text("Read Now!")
                .font(.title)
            Image("cover1")
                .resizable()
                .frame(width: 230, height: 350)
            Text("Mark for later")
                .font(.title2)
            Image(systemName: "star")
                .frame(width: 25, height: 25)
                .foregroundColor(.yellow)
            Text("Rate Amazing Words")
            Picker("", selection: $selectionIndex, content: {
                Text("1").tag(1)
                Text("2").tag(2)
                Text("3").tag(3)
                Text("4").tag(4)
                Text("5").tag(5)
            })
                .pickerStyle(SegmentedPickerStyle())
                .frame(width: 300)
        }
       
    }
}

struct BookRatingView_Previews: PreviewProvider {
    static var previews: some View {
        BookRatingView()
    }
}
