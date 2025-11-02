//
//  ProductRow.swift
//  Ecommerce
//
//  Created by Atharv Dwivedi on 02/11/25.
//

import SwiftUI

struct ProductRow: View {
    
    let product: Product
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150)
                .clipShape(UnevenRoundedRectangle(cornerRadii: .init(topLeading: 8, bottomLeading: 0, bottomTrailing: 0, topTrailing: 8)))
                .clipped()
            Group {
                Text(product.title)
                    .lineLimit(1)
                    .font(.system(size: 15, weight: .semibold))
                Text(product.displayPrice)
                    .font(.system(size: 15))
                HStack {
                    Image(systemName: "star.fill")
                        .font(.system(size: 14))
                        .foregroundStyle(.yellow)
                    Text("\(product.displayRating)")
                        .font(.system(size: 14))
                }
            }
            .padding(.horizontal, 5)
            Spacer()
        }
        .frame(width: 150, height: 270)
        .overlay(alignment: .topTrailing, content: {
            Button(action: {
                
            }, label: {
                Image(systemName: "heart")
            })
            .padding(8)
        })
        .overlay {
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color(uiColor: UIColor.lightGray).opacity(0.4), lineWidth: 1)
        }
    }
}

#Preview {
    ProductRow(product: ProductsClient.fetchProducts()[0])
}
