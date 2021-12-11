//
//  Book.swift
//  BookDisplay
//
//  Created by 王柏凱 on 2021-12-06.
//

import Foundation

struct Book: Decodable, Identifiable {
    var id:Int
    var title:String
    var author:String
    var isFavourite:Bool
    var currentPage:Int
    var rating:Int
    var content:[String]
}
