//
//  LoginUIView.swift
//  PlantsAppExample
//
//  Created by Hüseyin Umut Kardaş on 1.09.2024.
//

import SwiftUI

struct LoginUIView: View {
    @State var emailTextField: String = ""
    @State var passwordTextField: String = ""

    var body: some View {
        NavigationStack {
            VStack {
                ZStack {
                    Image("TopBackground")
                        .resizable()
                        .scaledToFill()
                        .frame(width: UIScreen.main.bounds.width, height: 250, alignment: .top)
                        .clipShape(BottomRoundedRectange(cornerRadius: 20, corner: .bottomRight))
                        .clipShape(BottomRoundedRectange(cornerRadius: 20, corner: .bottomLeft))
                        .shadow(radius: 10)

                    Text("Welcome\nBack")
                        .multilineTextAlignment(.trailing)
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity, alignment: .topTrailing)
                        .font(.system(size: 40))
                        .padding(.trailing, 20)
                }

                Spacer()

                VStack(spacing: 15) {
                    Text("Login to your account")
                        .font(.subheadline)
                        .foregroundStyle(.gray.opacity(0.5))

                    CustomTextField(textField: $emailTextField, imageName: "envelope.fill", placeholder: "Email")

                    CustomTextField(textField: $passwordTextField, imageName: "lock.fill", placeholder: "Password")
                }
                .padding(.bottom, 100)

                Spacer()

                AuthFooterView(view: RegisterUIView(), buttonTitle: "Sign In", description: "Don't have an account?", linkTitle: "Sign Up")
                    .padding(.bottom,30)
            }
            .toolbar(content: {
                AuthToolBar(destination: OnboardingUIView(), toolBarItemColor: .white)
            })
            .ignoresSafeArea()
        }
    }
}

#Preview {
    LoginUIView()
}
