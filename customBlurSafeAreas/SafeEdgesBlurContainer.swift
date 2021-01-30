//
//  SafeBottomBlurContainer.swift
//  BuildingblocksFramework
//
//  Created by Dave Kondris on 12/07/20.
//

import SwiftUI

struct SafeEdgesBlurContainer<V: View>: View {

    @Environment(\.colorScheme) var colorScheme
    @State var containedViewSize: CGSize = .zero
    
    var containedView: V
    var isPlacedAtTop: Bool
    var body: some View {
        GeometryReader { geometry in
            VStack {
                if !isPlacedAtTop {
                Spacer()
                }
                ZStack {
                        Blur(style:  self.colorScheme == .dark ? .systemThinMaterialDark : .systemThinMaterialLight)
                            .frame(
                                width: geometry.size.width + geometry.safeAreaInsets.leading + geometry.safeAreaInsets.trailing,
                                height: (isPlacedAtTop ? geometry.safeAreaInsets.top : geometry.safeAreaInsets.bottom ) + containedViewSize.height
                            )
                            .edgesIgnoringSafeArea([.leading])
                    HStack {
                        ChildSizeReader(size: $containedViewSize) {
                            containedView
                        }
                        .frame(width: geometry.size.width)
                        .padding(isPlacedAtTop ? .top : .bottom, isPlacedAtTop ? geometry.safeAreaInsets.top : geometry.safeAreaInsets.bottom)
                    }
                }
                if isPlacedAtTop {
                Spacer()
                }
            }
            .edgesIgnoringSafeArea(isPlacedAtTop ? .top : .bottom)
            .edgesIgnoringSafeArea([.leading, .trailing])
        }
    }
}

struct SafeEdgesBlurContainer_Previews: PreviewProvider {
    
    static var previews: some View {
        SafeEdgesBlurContainer(containedView: SegmentedPickerFrame().padding(/*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/), isPlacedAtTop: true)
    }
}

