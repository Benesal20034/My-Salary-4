//
//  HomeView.swift
//  My Salary 2
//
//  Created by Ben.issa on 12/8/2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView {
            CalculationView()
                .tabItem {
                    Image(systemName: "chart.bar.doc.horizontal")
                    Text("حساب الراتب")
                }
            
            AboutView()
                .tabItem {
                    Image(systemName: "exclamationmark.circle")
                    Text("حول البرنامج")
                }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
