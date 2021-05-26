//
//  TopBarView.swift
//  WatchShop
//
//  Created by Shubham Singh on 25/05/21.
//

import SwiftUI

struct TopBarView: View {
    
    // MARK:- views
    var body: some View {
        HStack {
            Button(action: {
                /// some action
            }) {
                Image(systemName: "line.horizontal.2.decrease.circle")
            }
            
            Spacer()
            
            HStack(spacing: 20) {
                Button(action: {}) {
                    Image(systemName: "slider.horizontal.3")
                    
                }
                
                Button(action: {}) {
                    Image(systemName: "bag")
                    
                }
            }
        }
        .actionButton()
    }
}

struct TopBarView_Previews: PreviewProvider {
    static var previews: some View {
        TopBarView()
            .padding(24)
    }
}
