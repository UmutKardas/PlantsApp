//
//  AuthFooterView.swift
//  PlantsAppExample
//
//  Created by Hüseyin Umut Kardaş on 1.09.2024.
//

import SwiftUI

struct AuthFooterView<Destination: View>: View {
    var view: Destination
    var buttonTitle: String
    var description: String
    var linkTitle: String

    var body: some View {
        VStack {
            CustomNavigationButton(destination: HomeUIView(), title: buttonTitle, backButtonHidden: true)
                .frame(alignment: .bottom)
                .padding(.bottom, 20)

            HStack(spacing: 5) {
                Text(description)
                    .font(.footnote)
                    .foregroundStyle(Color.gray.opacity(0.8))
                NavigationLink { view
                    .navigationBarBackButtonHidden()
                } label: {
                    Text(linkTitle)
                        .font(.footnote)
                        .fontWeight(.bold)
                        .foregroundStyle(Color("AppGreenColor"))
                }
            }
        }
    }
}
