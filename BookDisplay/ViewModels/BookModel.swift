//
//  BookModel.swift
//  BookDisplay
//
//  Created by 王柏凱 on 2021-12-06.
//

import Foundation

class BookModel: ObservableObject {
    var books:[Book]
    
    init() {
        self.books = DataService.getLocalBooksData()
    }
}
