//
//  AuthToolBar.swift
//  PlantsAppExample
//
//  Created by Hüseyin Umut Kardaş on 1.09.2024.
//

import SwiftUI

struct AuthToolBar<Destination: View>: ToolbarContent {
    var destination: Destination
    var toolBarItemColor: Color

    var body: some ToolbarContent {
        ToolbarItem(placement: .topBarLeading) {
            NavigationLink {
                destination
                    .navigationBarBackButtonHidden(true)
            } label: {
                Image(systemName: "chevron.backward")
                    .resizable()
                    .foregroundStyle(toolBarItemColor)
            }
        }
    }
}
