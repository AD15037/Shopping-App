//
//  CartView.swift
//  Ecommerce
//
//  Created by Atharv Dwivedi on 03/11/25.
//

import SwiftUI

struct CartView: View {
    
    @Environment(CartManager.self) var cartManager: CartManager
    
    fileprivate func CartRow(product: Product) -> some View {
        HStack {
            Image(product.image)
                .squareImageStyle()
            VStack(alignment: .leading) {
                Text(product.title)
                    .font(.system(size: 15))
                    .padding(.bottom, 1)
                Text(product.displayPrice)
                    .font(.system(size: 15))
                Stepper("Quantity 1") {
                    
                } onDecrement: {
                    
                }
            }
        }
    }
    
    var body: some View {
        VStack {
            List {
                ForEach(cartManager.products) { product in
                    CartRow(product: product)
                }
            }
        }
    }
}

#Preview {
    CartView()
        .environment(CartManager())
}
