//
//  EcommerceApp.swift
//  Ecommerce
//

import SwiftUI

@main
struct EcommerceApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                HomeView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                CartView()
                    .tabItem {
                        Image(systemName: "cart.fill")
                        Text("Cart")
                    }
                FavouritesView()
                    .tabItem {
                        Image(systemName: "heart.fill")
                        Text("Favourites")
                    }
            }
            .preferredColorScheme(.light)
        }
    }
}
