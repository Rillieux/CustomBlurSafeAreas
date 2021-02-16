//
//  GridView.swift
//  customBlurSafeAreas
//
//  Created by Dave Kondris on 30/01/21.
//

import SwiftUI

struct GridView: View {
    let data = (1...200).map { "Item \($0)" }
    let colors: [UIColor] = [.red, .yellow, .orange]
    
    //TODO: Maths to determine the proper height for spacers
    //when using a scrolling type of view. This has not been tested
    //for example with SwiftUI views like List, ScrollView. etc.
    
    let headerHeight: CGFloat = 92
    let footerHeight: CGFloat = 128
    
    var body: some View {
        ScrollView {
            Spacer().frame(height: headerHeight)
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 45), spacing: 1)], spacing: 1) {
                ForEach(data, id: \.self) { item in
                    RoundedRectangle(cornerRadius: 6.0, style: .continuous)
                        .frame(height: 50)
                        .foregroundColor(Color(colors.randomElement() ?? .blue))
                }
                Spacer().frame(height: footerHeight)
            }
        }
        .ignoresSafeArea(.all)
    }
}
struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
