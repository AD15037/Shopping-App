//
//  ProductInCart.swift
//  Ecommerce
//
//  Created by Atharv Dwivedi on 04/11/25.
//

import Foundation
import SwiftUI

struct ProductInCart: Identifiable {
    var id: String {
        product.id
    }
    let product: Product
    var quantity: Int
}
