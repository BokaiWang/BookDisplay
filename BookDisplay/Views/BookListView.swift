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
        Text("Hello, world!")
            .padding()
    }
}

struct BookListView_Previews: PreviewProvider {
    static var previews: some View {
        BookListView()
    }
}
