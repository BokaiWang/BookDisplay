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
    
    func updateCurrentPage(bookId:Int, page:Int) {
        if let index = books.firstIndex(where: { book in
            book.id == bookId
        }) {
            books[index].currentPage = page
        }
    }
    
    func updateFavourite(bookId:Int) {
        if let index = books.firstIndex(where: { book in
            book.id == bookId
        }) {
            books[index].isFavourite.toggle()
        }
    }
    
    func updateRating(bookId:Int, rating:Int) {
        if let index = books.firstIndex(where: { book in
            book.id == bookId
        }) {
            books[index].rating = rating
        }
    }
}
