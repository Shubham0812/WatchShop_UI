//
//  ContentView.swift
//  WatchShop
//
//  Created by Shubham Singh on 25/05/21.
//

import SwiftUI

struct ContentView: View {
    
    // MARK:- variables
    @State var selectedSegmentIndex: Int = 0
    @State var watchData: [Watch] = data
    
    // MARK:- views
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading, spacing: 24) {
                /// rest of the view goes here
                
                TopBarView()
                VStack(alignment: .leading, spacing: 24) {
                    Text("Discover our exclusive collection of watches")
                        .font(.system(size: 30, weight: .medium))
                        .padding(.trailing, 24)
                        .shadow(color: Color.black.opacity(0.1), radius: 5, y: 1)
                    
                    SegmentStackView(selectedSegmentIndex: $selectedSegmentIndex)
                        .padding(.top, 28)
                        .padding([.leading, .trailing], 12)
                    
                    // flexible grid item occupies the available space
                    // since we have two of them, each row will display two
                    // equally distributed views per row.
                    
                    // the spacing under GridItem is applied to the columns, and the spacing which is
                    // outside the columns (32) is applied between rows.
                    
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 20), count: 2), alignment: .leading, spacing: 32) {
                        ForEach(watchData, id: \.self) { watch in
                            ProductView(watch: watch)
                                .frame(minHeight: UIScreen.main.bounds.width / 1.75)
                        }
                    }.padding(.top, 36)
                }.padding(.top, 24)
                
            }.padding(24)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .colorScheme(.light)
    }
}


let data: [Watch] = [
    Watch(productImage: "1", name: "Classic Black Watch", price: "???4852"),
    Watch(productImage: "6", name: "Brown Watch", price: "???4852"),
    Watch(productImage: "3", name: "Black Watch", price: "???4852"),
    Watch(productImage: "4", name: "Classic Suede Watch", price: "???4852"),
    Watch(productImage: "5", name: "Digital Watch", price: "???4852"),
    Watch(productImage: "2", name: "Minimalist Watch", price: "???4852"),
    
]
