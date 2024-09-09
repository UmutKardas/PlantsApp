//
//  CustomTextField.swift
//  PlantsAppExample
//
//  Created by Hüseyin Umut Kardaş on 1.09.2024.
//

import SwiftUI

struct CustomTextField: View {
    @Binding var textField: String
    var imageName: String
    var placeholder: String

    var body: some View {
        ZStack(alignment: .leading) {
            HStack {
                Image(systemName: imageName)
                    .foregroundColor(Color("AppGreenColor"))
                    .padding(.leading, 10)
                TextField(placeholder, text: $textField)
                    .padding(.vertical,6)
                    .textFieldStyle(PlainTextFieldStyle())
            }
            .padding(10)
        }
        .background(Color("AppSecondaryGreenColor"))
        .clipShape(RoundedRectangle(cornerRadius: 5))
        .padding(.horizontal, 30)
    }
}

#Preview {
    CustomTextField(textField: Binding<String>.constant(""), imageName: "person.fill", placeholder: "Full Name")
}
