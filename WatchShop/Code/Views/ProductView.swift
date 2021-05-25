//
//  ProductView.swift
//  WatchShop
//
//  Created by Shubham Singh on 25/05/21.
//

import SwiftUI

struct ProductView: View {
    
    // MARK:- variables
    
    let watch: Watch
    
    
    // MARK:- views
    var body: some View {
        GeometryReader { geo in
            let height = geo.size.height
            ZStack(alignment: .top) {
                RoundedRectangle(cornerRadius: 12)
                    .opacity(0.05)
                VStack {
                    Image(watch.productImage)
                        .resizable()
                        .scaledToFit()
                        .frame(height: height * 0.75)
                    
                    Text(watch.name)
                        .font(.system(size: 18, weight: .medium))
                    Text(watch.price)
                        .font(.system(size: 16, weight: .bold, design: .monospaced))
                        .padding(.top, 12)
                        .foregroundColor(Color(hex: "DD614A"))
                }.padding(.top, -24)
            }
        }
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView(watch: Watch(productImage: "3", name: "Classic Black Watch", price: "₹4852"))
            .frame(width: 190, height: 300)
    }
}
