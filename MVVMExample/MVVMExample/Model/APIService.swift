//
//  APIService.swift
//  MVVMExample
//
//  Created by David Perez Espino on 02/10/23.
//

import Foundation

class APIService :  NSObject {
    
    private let sourcesURL = URL(string: "https://demo3019705.mockable.io/v1/employees")!
    
    func apiToGetEmployeeData(completion : @escaping (Employees) -> ()){
        URLSession.shared.dataTask(with: sourcesURL) { (data, urlResponse, error) in
            if let data = data {
                
                let jsonDecoder = JSONDecoder()
                
                let empData = try! jsonDecoder.decode(Employees.self, from: data)
                completion(empData)
            }
        }.resume()
    }
}
