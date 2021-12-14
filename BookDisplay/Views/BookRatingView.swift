//
//  BookRatingView.swift
//  BookDisplay
//
//  Created by 王柏凱 on 2021-12-06.
//

import SwiftUI

struct BookRatingView: View {
    @EnvironmentObject var model: BookModel
    var book:Book
    @State private var selectedRating = 2
    
    var body: some View {
        VStack(spacing:20) {
            HStack {
                Text(book.title)
                    .bold()
                .font(.largeTitle)
                Spacer()
            }
            .padding(.leading)
            .padding(.bottom, 30)
            Text("Read Now!")
                .font(.title)
            
            NavigationLink {
                BookContentView(book: book).onAppear {
                    model.updateSelectedBookIndex(bookId: book.id)
                }
            } label: {
                Image("cover\(book.id)")
                    .resizable()
                    .frame(width: 230, height: 350)
            }



            Text("Mark for later")
                .font(.title2)
            
            Button {
                model.books[book.id-1].isFavourite.toggle()
            } label: {
                Image(systemName: book.isFavourite ? "star.fill" : "star")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundColor(.yellow)
            }
            
            Text("Rate Amazing Words")
            
            Picker("", selection: $selectedRating, content: {
                Text("1").tag(1)
                Text("2").tag(2)
                Text("3").tag(3)
                Text("4").tag(4)
                Text("5").tag(5)
            })
                .pickerStyle(SegmentedPickerStyle())
                .frame(width: 300)
                .onChange(of: selectedRating) { value in
                    model.books[book.id-1].rating = value
                }
                .onAppear {
                    selectedRating = book.rating
                }
        }
       
    }
}

//struct BookRatingView_Previews: PreviewProvider {
//    static var previews: some View {
//        BookRatingView()
//    }
//}
