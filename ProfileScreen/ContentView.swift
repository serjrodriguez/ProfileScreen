//
//  ContentView.swift
//  ProfileScreen
//
//  Created by Sergio Rodriguez on 13/10/26.
//

import SwiftUI

struct ContentView: View {
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
    ContentView()
}
