//
//  BookContentView.swift
//  BookDisplay
//
//  Created by 王柏凱 on 2021-12-06.
//

import SwiftUI

struct BookContentView: View {
    @EnvironmentObject var model:BookModel
    var book:Book
    @State var page = 0
    
    var body: some View {
        
        TabView(selection: $page, content: {
            ForEach(0..<book.content.count) { index in
                VStack(alignment:.center) {
                    Text(book.content[index])
                        .tag(index)
                        .padding()
                    Text("\(index+1)")
                }
            }
        })
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
        .onChange(of: page) { newValue in
            model.updateCurrentPage(bookId: book.id, page: page)
        }
        .onAppear {
            page = book.currentPage
        }
    }
}

struct BookContentView_Previews: PreviewProvider {
    static var previews: some View {
        BookContentView(book: BookModel().books[0])
    }
}
