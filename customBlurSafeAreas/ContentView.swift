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
            ///The blur containers should follow the main content of the body
            ///so that they are lyerd on the topof the ZStack.
            GridView()
            SafeEdgesBlurContainer(containedView: Header(), isPlacedAtTop: true)
            SafeEdgesBlurContainer(containedView: Footer(), isPlacedAtTop: false)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
