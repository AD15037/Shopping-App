//
//  PrimaryButtonStyle.swift
//  Ecommerce
//
//  Created by Atharv Dwivedi on 03/11/25.
//

import Foundation
import SwiftUI

struct PrimaryButtonStyle: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .font(.system(size: 15, weight: .bold))
            .foregroundStyle(.white)
            .frame(maxWidth: .infinity)
            .frame(height: 45)
            .background(Color.blue)
            .clipShape(RoundedRectangle(cornerRadius: 8))
    }
    
}
