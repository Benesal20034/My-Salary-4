//
//  CalculationView.swift
//  My Salary 2
//
//  Created by Ben.issa on 12/8/2023.
//

import SwiftUI

struct CalculationView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                TextFieldsAndButtonView()
            }
            .navigationTitle("بيانات الراتب")
        }
    }
}

struct CalculationView_Previews: PreviewProvider {
    static var previews: some View {
        CalculationView()
    }
}

