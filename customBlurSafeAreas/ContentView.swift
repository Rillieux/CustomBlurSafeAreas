//
//  ContentView.swift
//  customBlurSafeAreas
//
//  Created by Dave Kondris on 30/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            GridView()
            SafeEdgesBlurContainer(containedView: SegmentedPickerFrame(), isPlacedAtTop: true)
            SafeEdgesBlurContainer(containedView: Footer(), isPlacedAtTop: false)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
