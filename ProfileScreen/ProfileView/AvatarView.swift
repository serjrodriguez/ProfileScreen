//
//  AvatarView.swift
//  ProfileScreen
//
//  Created by Sergio Rodriguez on 13/10/26.
//

import SwiftUI

struct AvatarView: View {
    var body: some View {
        Image("profileexample")
            .resizable()
            .scaledToFill()
            .frame(width: 100, height: 100)
            .clipShape(.circle)
            .overlay {
                Circle()
                    .stroke(.white, lineWidth: 2)
            }
            .shadow(radius: 8)
            .offset(y: 50)
    }
}

#Preview {
    AvatarView()
}
