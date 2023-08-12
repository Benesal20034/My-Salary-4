//
//  My_Salary_2App.swift
//  My Salary 2
//
//  Created by Ben.issa on 12/8/2023.
//

import SwiftUI

@main
struct My_Salary_2App: App {
    @StateObject var salarydata : SalaryViewModel = SalaryViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
            }
            
            .environmentObject(salarydata)
        }
    }
}
