//
//  BookModel.swift
//  BookDisplay
//
//  Created by 王柏凱 on 2021-12-06.
//

import Foundation

class BookModel: ObservableObject {
    @Published var books:[Book]
    @Published var selectedBookIndex = 0
    
    init() {
        self.books = DataService.getLocalBooksData()
    }
    
    func updateSelectedBookIndex(bookId:Int) {
        selectedBookIndex = books.firstIndex { book in
            book.id == bookId
        }!
    }
}
