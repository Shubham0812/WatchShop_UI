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
    
    // MARK:- views
    var body: some View {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading, spacing: 24) {
                    
                    /// top bar
                    HStack {
                        Button(action: {
                            /// some action
                        }) {
                            Image(systemName: "line.horizontal.2.decrease.circle")
                        }
                        .actionButton()
                        
                        Spacer()
                        
                        HStack(spacing: 20) {
                            Button(action: {}) {
                                Image(systemName: "slider.horizontal.3")
                                
                            }
                            .actionButton()
                            
                            Button(action: {}) {
                                Image(systemName: "bag")
                                
                            }
                            .actionButton()
                        }
                    }
                    
                    /// Main Content
                    VStack(spacing: 24) {
                        Text("Discover our collection of exclusive watches")
                            .font(.system(size: 30, weight: .medium))
                            .padding(.trailing, 24)
                            .shadow(color: Color.black.opacity(0.1), radius: 5, y: 1)
                        
                        HStack {
                            SegmentButton(selectedSegmentIndex: $selectedSegmentIndex, title: "Trending", index: 0, buttonAction: {
                                self.selectedSegmentIndex = 0
                            })
                            Spacer()
                            
                            SegmentButton(selectedSegmentIndex: $selectedSegmentIndex, title: "Popular", index: 1, buttonAction: {
                                self.selectedSegmentIndex = 1
                            })
                            
                            Spacer()
                            
                            SegmentButton(selectedSegmentIndex: $selectedSegmentIndex, title: "Recommended", index: 2, buttonAction: {
                                self.selectedSegmentIndex = 2
                            })
                        }.padding(.top, 28)
                        .padding([.leading, .trailing], 12)
                        
                        
                        LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 20), count: 2), alignment: .leading, spacing: 32) {
                            ForEach(data, id: \.self) { watch in
                                ProductView(watch: watch)
                                    .frame(minWidth: 0, minHeight: UIScreen.main.bounds.width / 1.75)
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
    Watch(productImage: "1", name: "Classic Black Watch", price: "₹4852"),
    Watch(productImage: "2", name: "Minimalist Watch", price: "₹4852"),
    Watch(productImage: "3", name: "Black Watch", price: "₹4852"),
    Watch(productImage: "4", name: "Classic Suede Watch", price: "₹4852"),
    Watch(productImage: "5", name: "Digital Watch", price: "₹4852"),
    Watch(productImage: "6", name: "Brown Watch", price: "₹4852"),

]
