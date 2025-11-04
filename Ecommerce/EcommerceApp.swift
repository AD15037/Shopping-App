//
//  EcommerceApp.swift
//  Ecommerce
//

import SwiftUI

@main
struct EcommerceApp: App {
    
    @State var favouritesManager = FavouritesManager()
    @State var cartManager = CartManager()
    
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
            .environment(favouritesManager)
            .environment(cartManager)
            .preferredColorScheme(.light)
        }
    }
}
