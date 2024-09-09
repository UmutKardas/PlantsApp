//
//  OnboardingUIView.swift
//  PlantsAppExample
//
//  Created by Hüseyin Umut Kardaş on 1.09.2024.
//

import SwiftUI

struct OnboardingUIView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Image("Background")
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                    .ignoresSafeArea()

                Text("The best\napp for\nyour plants")
                    .font(.system(size: 45))
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    .padding(.leading, 30)
                    .padding(.top, 70)

                VStack {
                    Spacer()
                    CustomNavigationButton(destination: LoginUIView(), title: "Sign In", backButtonHidden: true)

                    NavigationLink {
                        RegisterUIView()
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        Text("Create a Account")
                            .font(.subheadline)
                            .foregroundStyle(.white)
                            .padding(.top, 10)
                    }
                }
                .padding(.bottom, 80)
            }
            .ignoresSafeArea()
        }
    }
}

#Preview {
    OnboardingUIView()
}
