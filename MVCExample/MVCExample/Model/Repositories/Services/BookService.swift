//
//  BookService.swift
//  MVCExample
//
//  Created by David Perez Espino on 02/10/23.
//

import Foundation


class BookService {
    func getBooks(callBack:([Book]) -> Void) {
        callBack([
            Book(
                id: UUID().uuidString,
                title: "Tolkien",
                author: "The Lord of The Rings"
            ),
            Book(
                id: UUID().uuidString,
                title: "Dan Brown",
                author: "Red Rising"
            )
        ])
    }
    
}
