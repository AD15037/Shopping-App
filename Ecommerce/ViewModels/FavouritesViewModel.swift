//
//  FavouritesViewModel.swift
//  Ecommerce
//
//  Created by Atharv Dwivedi on 04/11/25.
//

import Foundation
import SwiftUI

@Observable
class FavouritesViewModel {
    var products: [Product] = ProductsClient.fetchProducts()
}
