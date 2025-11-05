//
//  EcommerceApp.swift
//  Ecommerce
//

import SwiftUI

@main
struct EcommerceApp: App {
    
    @State var favouritesManager = FavouritesManager()
    @State var cartManager = CartManager()
    @State var tabManager = TabManager()
    
    var body: some Scene {
        WindowGroup {
            TabView(selection: $tabManager.selectedTab) {
                HomeView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                    .tag(1)
                CartView()
                    .tabItem {
                        Image(systemName: "cart.fill")
                        Text("Cart")
                    }
                    .tag(2)
                FavouritesView()
                    .tabItem {
                        Image(systemName: "heart.fill")
                        Text("Favourites")
                    }
                    .tag(3)
            }
            .environment(favouritesManager)
            .environment(cartManager)
            .environment(tabManager)
            .preferredColorScheme(.light)
        }
    }
}
