//
//  ViewExtensions.swift
//  WatchShop
//
//  Created by Shubham Singh on 25/05/21.
//

import SwiftUI

extension View {
    
    func actionButton() -> some View {
        self
            .font(.system(size: 24, weight: .medium))
            .foregroundColor(.black)
            .shadow(color: Color.black.opacity(0.1), radius: 5)
            .buttonStyle(PlainButtonStyle())
    }
}

