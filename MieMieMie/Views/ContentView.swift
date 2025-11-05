//
//  ContentView.swift
//  MieMieMie
//
//  Created by Julie Zhang on 2025-11-03.
//

import SwiftUI

struct MainAppView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            //home, assess, recovery, progress, profile
            HomeView(selectedTab: $selectedTab)
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                .tag(0)
            AssessmentView(selectedTab: $selectedTab)
                .tabItem {
                    Image(systemName: "checkmark.circle")
                    Text("Assess")
                }
                .tag(1)
            RecoveryView(selectedTab: $selectedTab)
                .tabItem {
                    Image(systemName: "bandage")
                    Text("Recovery")
                }
                .tag(2)
            CommunityView(selectedTab: $selectedTab)
                .tabItem {
                    Image(systemName: "circle.grid.3x3")
                    Text("Community")
                }
                .tag(3)
            SettingsView(selectedTab: $selectedTab)
                .tabItem {
                    Image(systemName: "ellipsis")
                    Text("Settings")
                }
                .tag(4)
        }
    }
}

#Preview {
    MainAppView()
}
