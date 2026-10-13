//
//  HeaderView.swift
//  ProfileScreen
//
//  Created by Sergio Rodriguez on 13/10/26.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        Color.clear
            .frame(height: 250)
            .overlay {
                Image("purpleheader")
                    .resizable()
                    .scaledToFill()
            }
            .clipped()
            .overlay(alignment: .bottom) {
                AvatarView()
            }
            .padding(.bottom, 66)
    }
}

#Preview {
    HeaderView()
}
