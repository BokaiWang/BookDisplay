//
//  ContentView.swift
//  BookDisplay
//
//  Created by 王柏凱 on 2021-12-06.
//

import SwiftUI

struct BookListView: View {
    var model = BookModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack {
                    ForEach(0..<3){ i in
                        NavigationLink(destination: {
                            BookRatingView()
                        }) {
                            BookView()
                                .padding(30)
                        }
                        
                    }.padding(20)
                }
            }.navigationTitle("My Library")
        }

    }
}

struct BookListView_Previews: PreviewProvider {
    static var previews: some View {
        BookListView()
    }
}
