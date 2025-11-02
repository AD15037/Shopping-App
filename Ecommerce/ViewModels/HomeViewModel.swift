//
//  HomeViewModel.swift
//  Ecommerce
//
//  Created by Atharv Dwivedi on 29/10/25.
//

import Foundation
import SwiftUI

@Observable
class HomeViewModel {
    
    var featuredProducts = ProductsClient.fetchProducts().filter({$0.isFeatured})
    
}
