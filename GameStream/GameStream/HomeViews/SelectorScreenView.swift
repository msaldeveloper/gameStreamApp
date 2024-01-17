//
//  HomeScreenView.swift
//  GameStream
//
//  Created by mario saldaña martinez on 01/11/23.
//

import SwiftUI

struct SelectorScreenView: View {
    var body: some View {
        
        TabView {
            
            ProfileView().tabItem {
                Image(systemName: "person.crop.circle")
                Text("Perfil")
                }
            GamesScreenView()
                .tabItem {
                    Image(systemName: "gamecontroller")
                    Text("Juegos")
                }
            HomeScreenView()
                .tabItem {
                    Image(systemName: "house")
                    Text("inicio")
                }
            FavoritesScreenView()
                .tabItem {
                    Image(systemName: "heart")
                    Text("Favoritos")
                }
        }
    }
}

#Preview {
    SelectorScreenView()
}
