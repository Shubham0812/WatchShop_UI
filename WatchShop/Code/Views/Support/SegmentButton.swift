//
//  SegmentButton.swift
//  WatchShop
//
//  Created by Shubham Singh on 25/05/21.
//

import SwiftUI

struct SegmentButton: View {
    
    // MARK:- variables
    @Binding var selectedSegmentIndex: Int
    
    let title: String
    let index: Int
    let buttonAction: () -> ()
    
    // MARK:- views
    var body: some View {
        Button(action: buttonAction) {
            Text(title)
                .font(.system(size: 18, weight: .regular))
        }
        .background(
            RoundedRectangle(cornerRadius: 10)
                .padding([.leading, .trailing], -15)
                .padding([.top, .bottom], -10)
                .foregroundColor(Color.black.opacity(0.1))
                .opacity(self.selectedSegmentIndex == index ? 1 : 0)
                .animation(.default)
        )
        .buttonStyle(PlainButtonStyle())
    }
}

struct SegmentStackView: View {
    // MARK:- variables
    @Binding var selectedSegmentIndex: Int
    
    // MARK:- views
    var body: some View {
        HStack {
            SegmentButton(selectedSegmentIndex: $selectedSegmentIndex,
                          title: "Trending", index: 0, buttonAction: {
                self.selectedSegmentIndex = 0
            })
            Spacer()
            SegmentButton(selectedSegmentIndex: $selectedSegmentIndex,
                          title: "Popular", index: 1, buttonAction: {
                self.selectedSegmentIndex = 1
            })
            Spacer()
            SegmentButton(selectedSegmentIndex: $selectedSegmentIndex,
                          title: "Recommended", index: 2, buttonAction: {
                self.selectedSegmentIndex = 2
            })
        }
    }
}

struct SegmentButton_Previews: PreviewProvider {
    static var previews: some View {
        SegmentButton(selectedSegmentIndex: .constant(0), title: "Trending", index: 0, buttonAction: {})
    }
}
