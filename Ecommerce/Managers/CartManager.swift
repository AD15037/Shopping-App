//
//  CartManager.swift
//  Ecommerce
//
//  Created by Atharv Dwivedi on 04/11/25.
//

import Foundation
import SwiftUI

@Observable
class CartManager {
    
    var productsInCart: [ProductInCart] = []
    var addToCartAlert = false
    
    var displayTotalCartQuantity: Int {
        var totalQuantity = 0
        for productInCart in productsInCart {
            totalQuantity += productInCart.quantity
        }
        return totalQuantity
    }
    
    func addToCart(product: Product) {
        if let indexOfProductInCart = productsInCart.firstIndex(where: { $0.id == product.id }) {
            let currentQuantity = productsInCart[indexOfProductInCart].quantity
            let newQuantity = currentQuantity + 1
            let updatedProductInCart = ProductInCart(product: product, quantity: newQuantity)
            productsInCart[indexOfProductInCart] = updatedProductInCart
        } else {
            productsInCart.append(ProductInCart(product: product, quantity: 1))
        }
        addToCartAlert = true
    }
    
}
