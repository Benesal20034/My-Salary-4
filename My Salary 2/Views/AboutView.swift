//
//  AboutView.swift
//  My Salary 2
//
//  Created by Ben.issa on 12/8/2023.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 15) {
                Text("برنامج راتبي")
                    .foregroundColor(.green)
                Text("هو برنامج حساب تقريبي للراتب لمستخدمي شركة الخليج العربي. و هو ايضا برنامج غير رسمي من الشركة")
                    .multilineTextAlignment(.center)
            } // VStack
            .padding()
            .navigationTitle("حول البرنامج")
        } // NavigationView
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
