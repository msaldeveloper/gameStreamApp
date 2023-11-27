//
//  HomeScreenView.swift
//  GameStream
//
//  Created by mario saldaña martinez on 01/11/23.
//

import SwiftUI

struct SelectorScreenView: View {
    
    @State var selectedTab : Int = 2
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.tabBar

    }
    var body: some View {
        
        TabView (selection: $selectedTab) {
            
            ProfileView()
                .tabItem {
                    Label("Perfil", systemImage: "person")
                }.tag(0)
            GamesScreenView()
                .tabItem {
                    Label("Juegos", systemImage: "gamecontroller")
                }.tag(1)
            HomeScreenView()
                .tabItem {
                    Label("Inicio", systemImage: "house")
                }.tag(2)
            FavoritesScreenView()
                .tabItem {
                    Label("Favoritos", systemImage: "heart")
                }.tag(3)
            //147,155,168
        }.tint(.white)
            .toolbar(.hidden)
    }
}

#Preview {
    SelectorScreenView()
}
