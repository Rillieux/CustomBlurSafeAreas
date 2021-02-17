//
//  Header.swift
//  customBlurSafeAreas
//
//  Created by Dave Kondris on 16/02/21.
//

import SwiftUI

//A sample "header View" employing a SegmentedPicker.

struct Header: View {
    
    @State private var selectedSelection = 1
    var selections: [Selection] = [.first, .second, .third, .fourth]
    var body: some View {
        
        ///Added
        Picker(selection: $selectedSelection, label: Text("Selection")) {
            ForEach(0..<selections.count) { index in
                Text(self.selections[index].fullName)
                    .tag(index)
            }
        }
        .onChange(of: selectedSelection) { tag in
            withAnimation { selectedSelection = tag }
        }
        .pickerStyle(SegmentedPickerStyle())
        .frame(maxWidth: 300)
        .padding(.horizontal)
        .padding(.top, 5)
        .padding(.bottom, 12)
    }
}

extension Header {
    enum Selection {
        case first
        case second
        case third
        case fourth
        
        var tag: Int {
            switch self {
                case .first:
                    return 1
                case .second:
                    return 2
                case .third:
                    return 3
                case .fourth:
                    return 4
            }
        }
        
        var fullName: String {
            switch self {
                case .first:
                    return "One"
                case .second:
                    return "Two"
                case .third:
                    return "Three"
                case .fourth:
                    return "Four"
            }
        }
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header().previewLayout(.sizeThatFits)
    }
}
