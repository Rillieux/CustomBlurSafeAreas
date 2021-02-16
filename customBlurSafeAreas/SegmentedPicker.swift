//
//  ApparatusPicker.swift
//  gymsymbol
//
//  Created by Dave Kondris on 12/07/20.
//  Copyright © 2020 Dave Kondris. All rights reserved.
//

import SwiftUI

//enum Selection {
//    case first
//    case second
//    case third
//    case fourth
//    
//    var tag: Int {
//        switch self {
//            case .first:
//                return 1
//            case .second:
//                return 2
//            case .third:
//                return 3
//            case .fourth:
//                return 4
//        }
//    }
//
//    var fullName: String {
//        switch self {
//            case .first:
//                return "One"
//            case .second:
//                return "Two"
//            case .third:
//                return "Three"
//            case .fourth:
//                return "Four"
//        }
//    }
//    
//}

//struct SegmentedPicker: View {
//
//    @State private var selectedSelection = 1
//    var selections: [Selection] = [.first, .second, .third, .fourth]
//    var body: some View {
//        Picker(selection: $selectedSelection.onChange(changeSelection), label: Text("Selection")) {
//            ForEach(0..<selections.count) { index in
//                Text(self.selections[index].fullName)
//                    .tag(index)
//            }
//        }
//        .pickerStyle(SegmentedPickerStyle())
//        .frame(maxWidth: 300)
//    }
//    
//    func changeSelection(_ tag: Int) {
//        withAnimation{
//            selectedSelection = tag
//        }
//    }
//}
//
//struct SegmentedPicker_Previews: PreviewProvider {
//    static var previews: some View {
//        SegmentedPicker().previewLayout(.sizeThatFits)
//    }
//}
//
