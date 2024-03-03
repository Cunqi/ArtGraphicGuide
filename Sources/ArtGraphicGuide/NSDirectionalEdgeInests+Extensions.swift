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
        let top = edges[agg_safe: 0] ?? 0
        let leading = edges[agg_safe: 1] ?? 0
        let bottom = edges[agg_safe: 2] ?? 0
        let trailing = edges[agg_safe: 3] ?? 0
        self.init(top: top, leading: leading, bottom: bottom, trailing: trailing)
    }
    
    static func insets(margin: CGFloat) -> NSDirectionalEdgeInsets {
        NSDirectionalEdgeInsets(top: margin, leading: margin, bottom: -margin, trailing: -margin)
    }
    
    static func insets(horizontal: CGFloat, vertical: CGFloat) -> NSDirectionalEdgeInsets {
        NSDirectionalEdgeInsets(top: vertical, leading: horizontal, bottom: -vertical, trailing: -horizontal)
    }
    
    static func insets(horizontal: CGFloat) -> NSDirectionalEdgeInsets {
        insets(horizontal: horizontal, vertical: 0)
    }
    
    static func insets(vertical: CGFloat) -> NSDirectionalEdgeInsets {
        insets(horizontal: 0, vertical: vertical)
    }

}
