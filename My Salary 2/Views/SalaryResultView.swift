//
//  SalaryResultView.swift
//  My Salary 2
//
//  Created by Ben.issa on 12/8/2023.
//

import SwiftUI

struct SalaryResultView: View {
    
    @EnvironmentObject var salaryResult: SalaryViewModel
    @Environment(\.dismiss) var close
    
    var body: some View {
        NavigationView {
            List {
                
                Section {
                    ForEach(salaryResult.Entitlement) { name in
                        HStack{
                            Text(name.names)
                                .font(.headline)
                            Spacer()
                            
                            VStack{
                                Text("\(String(format: "%.2f", name.valu))")
                                    .font(.headline)
                                    .foregroundColor(Color(uiColor: .systemGreen))
                                Text("دينار")
                                    .font(.caption)
                                    .foregroundColor(Color(uiColor: .systemGray))
                            } // VS
                        } // HS
                        
                    } // for each
                } header: {
                    Text("الاستحقاق")
                }
                

                Section {
                    ForEach(salaryResult.Deductions) { name in
                        HStack{
                            Text(name.names)
                                .font(.headline)
                            Spacer()
                           
                            VStack{
                                Text("\(String(format: "%.2f", name.valu))")
                                    .font(.headline)
                                    .foregroundColor(Color(uiColor: .systemRed))
                                Text("دينار")
                                    .font(.caption)
                                    .foregroundColor(Color(uiColor: .systemGray))
                            } // VS
                        } // HS
                        
                    } // for each
                } header: {
                    Text("الاستقطاعات")
                }

            } // List
            .navigationTitle("صافي المرتب \(String(format: "%.2f", salaryResult.NetSalary))")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("إغلاق") {
                        close.callAsFunction()
                    }
                }
            }
            
        }
    }
}

struct SalaryResultView_Previews: PreviewProvider {
    static var previews: some View {
        SalaryResultView()
            .environmentObject(SalaryViewModel())
    }
}
