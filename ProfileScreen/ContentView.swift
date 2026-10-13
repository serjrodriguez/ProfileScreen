//
//  ContentView.swift
//  ProfileScreen
//
//  Created by Sergio Rodriguez on 13/10/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ProfileView()
                .navigationTitle("PROFILE")
                .navigationBarTitleDisplayMode(.inline)
                .toolbarBackground(.hidden, for: .navigationBar)
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Button("Menu", systemImage: "line.3.horizontal") { }
                    }
                    ToolbarItem(placement: .topBarTrailing) {
                        Button("Settings", systemImage: "gearshape") { }
                    }
                }
        }
    }
}

#Preview {
    ContentView()
}
