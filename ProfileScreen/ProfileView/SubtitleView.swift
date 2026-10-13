//
//  SubtitleView.swift
//  ProfileScreen
//
//  Created by Sergio Rodriguez on 13/10/26.
//

import SwiftUI

struct SubtitleView: View {
    var body: some View {
        VStack {
            Text("John Doe")
                .textCase(.uppercase)
                .bold()
                .font(.subheadline)
            
            Text("iOS Developer")
                .textCase(.uppercase)
                .bold()
                .foregroundStyle(.gray)
                .font(.caption)
        }
        .padding([.bottom])
    }
}

#Preview {
    SubtitleView()
}
