//
//  ProductGridView.swift
//  Ecommerce
//
//  Created by Atharv Dwivedi on 28/10/25.
//

import SwiftUI

struct ProductGridView: View {
    
    @State var viewModel: ProductGridViewModel
    
    init(filter: ProductFilter) {
        self.viewModel = ProductGridViewModel(filter: filter)
    }
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(viewModel.products) { product in
                    ProductRow(product: product)
                }
            }
        }
    }
}

#Preview {
    ProductGridView(filter: .all)
}
