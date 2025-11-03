//
//  TwoColumnGrid.swift
//  Ecommerce
//
//  Created by Atharv Dwivedi on 03/11/25.
//

import Foundation
import SwiftUI

struct TwoColumnGrid<Content: View>: View {
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    @ViewBuilder var content: () -> Content
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                content()
            }
        }
    }
    
}
