//
//  SquareImageModifier.swift
//  Ecommerce
//
//  Created by Atharv Dwivedi on 04/11/25.
//

import Foundation
import SwiftUI

extension Image {
    
    func squareImageStyle() -> some View {
        self
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 70, height: 70)
    }
    
}
