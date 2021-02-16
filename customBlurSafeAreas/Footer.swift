//
//  Footer.swift
//  customBlurSafeAreas
//
//  Created by Dave Kondris on 30/01/21.
//

import SwiftUI

//A sample "Footer" view showing a custom view.

struct Footer: View {
    var body: some View {
        
        HStack (spacing: 4) {
            Circle().foregroundColor(.red)
            Circle().foregroundColor(.orange)
            Circle().foregroundColor(.yellow)
            Circle().foregroundColor(.green)
            Circle().foregroundColor(.blue)
        }
        .padding()
        .frame(height: 72)
        
    }
}

struct Footer_Previews: PreviewProvider {
    static var previews: some View {
        Footer()
    }
}
