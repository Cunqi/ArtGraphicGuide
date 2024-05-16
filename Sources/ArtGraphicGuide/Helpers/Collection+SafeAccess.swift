//
//  Collection+SafeAccess.swift
//
//
//  Created by Cunqi Xiao on 3/2/24.
//

import Foundation

public extension Collection {
    /// Returns the element at the specified index if it is within bounds, otherwise nil.
    subscript (optional index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}

