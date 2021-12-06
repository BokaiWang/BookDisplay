//
//  DataService.swift
//  BookDisplay
//
//  Created by 王柏凱 on 2021-12-06.
//

import Foundation
import SwiftUI

class DataService {
    
    static func getLocalBooksData() -> [Book] {
        // Get a path
        let pathString = Bundle.main.path(forResource: "Data", ofType: "json")
        // Get a url
        guard pathString != nil else {
            return [Book]()
        }
        let url = URL(fileURLWithPath: pathString!)
        // Get a data
        do {
            let data = try Data(contentsOf: url)
            // Parse the data object
            let parsedData = try JSONDecoder().decode([Book].self, from: data)
            return parsedData
        } catch {
            print(error)
        }
        return [Book]()
    }

}
