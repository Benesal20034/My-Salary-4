//
//  SalaryModel.swift
//  My Salary 2
//
//  Created by Ben.issa on 12/8/2023.
//

import Foundation

struct SalaryModel {
    
     var basicSalary : String
     var numOfdayInFeild: String
     var numOfHolydaysHour : String
     var numOfNoarmalHours : String
     var feildbonus : String
     var advancepremium : String
     var familyNum : String
     var numOfyears : String
}

struct NameAndValu: Identifiable {
    let id = UUID().uuidString
    let names: String
    let valu: Double
}
