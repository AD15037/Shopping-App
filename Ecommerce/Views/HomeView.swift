//
//  HomeView.swift
//  Ecommerce
//
//  Created by Atharv Dwivedi on 28/10/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Text("Ecommerce App")
                    .font(.system(size: 15, weight: .semibold))
                Spacer()
            }
            .overlay(alignment: .trailing) {
                Button {
                    
                } label: {
                    ZStack {
                        Image(systemName: "cart.fill")
                            .foregroundStyle(.black)
                        ZStack {
                            Circle()
                        }
                        .offset(CGSize(width: 10, height: -10))
                    }
                }
                .padding(.trailing)
            }
            Spacer()
        }
    }
}

#Preview {
    HomeView()
}
