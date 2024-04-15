//
//  MainTabView.swift
//  WatchGhibli
//
//  Created by Deonte Kilgore on 4/15/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            NavigationStack {
                MovieListView()
            }
            .tabItem {
                Label("Movies", systemImage: "film")
            }
            
            NavigationStack {
                FavoritesView()
            }
            .tabItem {
                Label("Favorites", systemImage: "star")
            }
            NavigationStack {
                WatchHistoryView()
            }
            .tabItem {
                Label("History", systemImage: "clock.arrow.circlepath")
            }
        }
    }
}

#Preview {
    MainTabView()
}
