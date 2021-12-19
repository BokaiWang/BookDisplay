//
//  ContentView.swift
//  BookDisplay
//
//  Created by 王柏凱 on 2021-12-06.
//

import SwiftUI

struct BookListView: View {
    @EnvironmentObject var model:BookModel
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack {
                    ForEach(model.books){ book in
                        NavigationLink(destination: {
                            BookRatingView(book: book)
                        }) {
                            BookView(book: book)
                                .padding(30)
                        }
                        
                    }.padding(20)
                }
            }
            .navigationTitle("My Library")
            
        }
        .navigationViewStyle(.stack)
        

    }
}
    

struct BookListView_Previews: PreviewProvider {
    static var previews: some View {
        BookListView()
    }
}
