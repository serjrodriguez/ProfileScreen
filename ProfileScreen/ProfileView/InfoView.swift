//
//  InfoView.swift
//  ProfileScreen
//
//  Created by Sergio Rodriguez on 13/10/26.
//

import SwiftUI

struct InfoView: View {
    var title: String
    var value: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .foregroundStyle(.purple)
                .bold()
                .font(.caption)
                .padding([.bottom], 1)
            Text(value)
                .bold()
                .font(.callout)
                .padding([.bottom], 1)
            Divider()
        }
        .padding([.leading, .trailing], 16)
        .padding([.bottom])
    }
}

#Preview {
    InfoView(title: "TestTitle", value: "TestValue")
}
