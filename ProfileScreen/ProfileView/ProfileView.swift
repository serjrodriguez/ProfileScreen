//
//  ProfileView.swift
//  ProfileScreen
//
//  Created by Sergio Rodriguez on 13/10/26.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ScrollView {
            
            HeaderView()
            
            SubtitleView()
            
            InfoView(title: "Name", value: "John Doe")
            
            InfoView(title: "Age", value: "30")
            
            InfoView(title: "Email", value: "john.doe@example.com")
            
            InfoView(title: "Password", value: "******")
            
            InfoView(title: "Street", value: "123 Main Street")
            
            InfoView(title: "Neighborhood", value: "Downtown")
            
            InfoView(title: "City", value: "New York")
        }
        .ignoresSafeArea(edges: .top)
    }
}

#Preview {
    ProfileView()
}
