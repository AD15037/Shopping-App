//
//  BannerImageModifier.swift
//  Ecommerce
//
//  Created by Atharv Dwivedi on 28/10/25.
//

import Foundation
import SwiftUI

extension Image {
    
    func bannerImageStyle() -> some View {          //We have done it like this because .resizable() is a very specific modifier which works only on images but not Button etc so by creating a function, a new image is being created and all the modifiers are being applied on that new image. That's how function this Custom View Modifier is working now.
        self
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: UIScreen.main.bounds.width, height: 250)
            .clipped()
    }
    
}
