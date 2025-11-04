//
//  FavouritesView.swift
//  Ecommerce
//
//  Created by Atharv Dwivedi on 03/11/25.
//

import SwiftUI

struct FavouritesView: View {
    
    @Environment(FavouritesManager.self) var favouritesManager: FavouritesManager
    
    fileprivate func FavouriteProductRow(product: Product) -> some View {
        HStack {
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 70, height: 70)
            VStack(alignment: .leading) {
                Text(product.title)
                    .font(.system(size: 15, weight: .semibold))
                    .padding(.bottom, 1)
                Text(product.description)
                    .lineLimit(2)
                    .font(.system(size: 15))
            }
            Button {
                favouritesManager.products.removeAll(where: { $0.id == product.id })
            } label: {
                Image(systemName: "heart.fill")
            }
        }
    }
    
    var body: some View {
        VStack {
            List(favouritesManager.products) { product in
                FavouriteProductRow(product: product)
            }
        }
        .overlay {
            if favouritesManager.products.count == 0 {
                Text("Nothing to see here")
            }
        }
    }
}

#Preview {
    FavouritesView()
        .environment(FavouritesManager())
}
