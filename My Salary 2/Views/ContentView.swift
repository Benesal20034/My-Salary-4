//
//  ContentView.swift
//  My Salary 2
//
//  Created by Ben.issa on 12/8/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var street: String = ""
    @State private var city: String = ""
    @State private var country: String = ""
    @State private var city2: String = ""
    @State var firstName : String = ""
    
    @FocusState private var focusedField: Field?
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Street", text: $street)
                    .focused($focusedField, equals: .street)
                TextField("City", text: $city)
                    .focused($focusedField, equals: .city)
                TextField("Country", text: $country)
                    .focused($focusedField, equals: .country)
                TextField("city2", text: $city2)
                    .focused($focusedField, equals: .city2)
                
                TextField("", text: self.$firstName)
                    .focused($focusedField, equals: .firstName)
                    .textFieldStyle(
                        CustomTextFieldStyle(
                            placeholder: "First Name3",
                            placeholderColor: Color(uiColor: .systemGreen),
                            placeholderBgColor: Color(uiColor: .systemBackground),
                            isEditing: !self.firstName.isEmpty
                        )
                    )
                
            }
            .toolbar {
                
                ToolbarItem(placement: .keyboard) {
                    HStack{
                        
                        
                        Button("Done") {
                            
                        }
                        
                        Spacer()
                        Button(action: focusPreviousField) {
                            Image(systemName: "chevron.up")
                            
                        }
                        .disabled(!canFocusPreviousField())
                        
                        
                        Button(action: focusNextField) {
                            Image(systemName: "chevron.down")
                            
                        }
                        .disabled(!canFocusNextField())
                    }
                    
                }
                
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
extension ContentView {
    private enum Field: Int, CaseIterable {
        case street, city, country , city2 , firstName
    }
    
    private func focusPreviousField() {
        focusedField = focusedField.map {
            Field(rawValue: $0.rawValue - 1) ?? .country
        }
    }
    
    private func focusNextField() {
        focusedField = focusedField.map {
            Field(rawValue: $0.rawValue + 1) ?? .street
        }
    }
    
    private func canFocusPreviousField() -> Bool {
        guard let currentFocusedField = focusedField else {
            return false
        }
        return currentFocusedField.rawValue > 0
    }
    
    private func canFocusNextField() -> Bool {
        guard let currentFocusedField = focusedField else {
            return false
        }
        return currentFocusedField.rawValue < Field.allCases.count - 1
    }
}

