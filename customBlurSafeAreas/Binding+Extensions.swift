//
//  Binding+Extensions.swift
//  customBlurSafeAreas
//
//  Created by Dave Kondris on 30/01/21.
//

import Foundation
import SwiftUI

extension Binding {
    func onChange(_ handler: @escaping (Value) -> Void) -> Binding<Value> {
        return Binding(
            get: { self.wrappedValue },
            set: { selection in
                self.wrappedValue = selection
                handler(selection)
        })
    }
}
