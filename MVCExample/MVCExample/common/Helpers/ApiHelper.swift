//
//  ApiHelper.swift
//  MVCExample
//
//  Created by David Perez Espino on 02/10/23.
//

import Foundation

class ApiHelper {
    
    static let shared = ApiHelper()
    private init() { }
    
    private let service = BookService()
    
    func getBooks(callBack:([Book]) -> Void) {
        service.getBooks { books in
            callBack(books)
        }
    }
    
}
