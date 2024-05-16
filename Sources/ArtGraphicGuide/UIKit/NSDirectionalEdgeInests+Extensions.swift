//
//  NSDirectionalEdgeInests+Extensions.swift
//
//
//  Created by Cunqi Xiao on 3/2/24.
//

import UIKit

public extension NSDirectionalEdgeInsets {
    
    // MARK: - Convenient creation methods
    
    /// A convenient initilizer takes first 4 items from array as
    /// (top, leading, bottom, trailing), missing edges will be 0
    /// For example, [1, 2] means (top = 1, leading = 2, bottom = 0, trailing = 0)
    /// - Parameter edges: values of edges
    init(with edges: [CGFloat]) {
        let top = edges[optional: 0] ?? 0
        let leading = edges[optional: 1] ?? 0
        let bottom = edges[optional: 2] ?? 0
        let trailing = edges[optional: 3] ?? 0
        self.init(top: top, leading: leading, bottom: bottom, trailing: trailing)
    }
    
    static func insets(margin: CGFloat, symmetric: Bool = false) -> NSDirectionalEdgeInsets {
        let symbol: CGFloat = symmetric ? -1 : 1
        return NSDirectionalEdgeInsets(top: margin, leading: margin, bottom: margin * symbol, trailing: margin * symbol)
    }
    
    static func insets(horizontal: CGFloat, vertical: CGFloat, symmetric: Bool = false) -> NSDirectionalEdgeInsets {
        let symbol: CGFloat = symmetric ? -1 : 1
        return NSDirectionalEdgeInsets(top: vertical, leading: horizontal, bottom: vertical * symbol, trailing: horizontal * symbol)
    }
    
    static func insets(horizontal: CGFloat, symmetric: Bool = false) -> NSDirectionalEdgeInsets {
        insets(horizontal: horizontal, vertical: 0, symmetric: symmetric)
    }
    
    static func insets(vertical: CGFloat, symmetric: Bool = false) -> NSDirectionalEdgeInsets {
        insets(horizontal: 0, vertical: vertical, symmetric: symmetric)
    }

}
