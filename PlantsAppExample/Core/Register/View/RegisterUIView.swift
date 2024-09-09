//
//  RegisterUIView.swift
//  PlantsAppExample
//
//  Created by Hüseyin Umut Kardaş on 1.09.2024.
//

import SwiftUI

struct RegisterUIView: View {
    @State var fullNameTextField: String = ""
    @State var emailTextField: String = ""
    @State var passwordTextField: String = ""

    var body: some View {
        NavigationStack {
            VStack {
                VStack(spacing: 5) {
                    Text("Register")
                        .foregroundColor(Color("AppGreenColor"))
                        .font(.system(size: 40))

                    Text("Create your new account")
                        .font(.subheadline)
                        .foregroundColor(Color.gray.opacity(0.5))
                }.frame(alignment: .top)
                    .padding(.top, 50)
                Spacer()

                VStack(spacing: 20) {
                    CustomTextField(textField: $fullNameTextField, imageName: "person.fill", placeholder: "Full Name")
                    CustomTextField(textField: $emailTextField, imageName: "envelope.fill", placeholder: "Email")
                    CustomTextField(textField: $passwordTextField, imageName: "lock.fill", placeholder: "Password")
                }
                .padding(.bottom, 100)
                Spacer()

                AuthFooterView(view: LoginUIView(), buttonTitle: "Sign Up", description: "Already have an account?", linkTitle: "Sign In")
            }
            .toolbar(content: {
                AuthToolBar(destination: OnboardingUIView(), toolBarItemColor: Color("TextColor"))
            })
        }
    }
}

#Preview {
    RegisterUIView()
}
