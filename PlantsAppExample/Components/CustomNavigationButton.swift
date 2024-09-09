//
//  CustomNavigationButton.swift
//  PlantsAppExample
//
//  Created by Hüseyin Umut Kardaş on 1.09.2024.
//

import SwiftUI

struct CustomNavigationButton<Destination: View>: View {
    var destination: Destination
    var title: String
    var backButtonHidden: Bool

    var body: some View {
        NavigationLink {
            destination
                .navigationBarBackButtonHidden(backButtonHidden)
        } label: {
            Text(title)
                .font(.subheadline)
                .frame(maxWidth: .infinity, minHeight: 50)
                .background(Color("AppGreenColor"))
                .foregroundColor(.white)
                .cornerRadius(8)
                .padding(.horizontal, 30)
        }
    }
}

#Preview {
    CustomNavigationButton(destination: LoginUIView(), title: "Sign In", backButtonHidden: true)
}
