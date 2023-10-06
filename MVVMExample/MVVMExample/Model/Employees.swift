//
//  Employees.swift
//  MVVMExample
//
//  Created by David Perez Espino on 02/10/23.
//


struct Employees: Codable {
    let status: String
    let data: [EmployeeData]
    let message: String
}

struct EmployeeData: Codable {
    let id: Int
    let employeeName: String
    let employeeSalary, employeeAge: Int
    
    enum CodingKeys: String, CodingKey {
        case id
        case employeeName = "employee_name"
        case employeeSalary = "employee_salary"
        case employeeAge = "employee_age"
    }
}
