//
//  UIEdgeInsets+Extensions.swift
//
//
//  Created by Cunqi Xiao on 3/2/24.
//

import UIKit

public extension UIEdgeInsets {
    
    // MARK: - Convenient creation methods
    
    /// A convenient initilizer takes first 4 items from array as
    /// (top, leading, bottom, trailing), missing edges will be 0
    /// For example, [1, 2] means (top = 1, leading = 2, bottom = 0, trailing = 0)
    /// - Parameter edges: values of edges
    init(with edges: [CGFloat]) {
        let top = edges[optional: 0] ?? 0
        let left = edges[optional: 1] ?? 0
        let bottom = edges[optional: 2] ?? 0
        let right = edges[optional: 3] ?? 0
        self.init(top: top, left: left, bottom: bottom, right: right)
    }
    
    static func insets(margin: CGFloat) -> UIEdgeInsets {
        UIEdgeInsets(top: margin, left: margin, bottom: margin, right: margin)
    }
    
    static func insets(horizontal: CGFloat, vertical: CGFloat) -> UIEdgeInsets {
        UIEdgeInsets(top: vertical, left: horizontal, bottom: vertical, right: horizontal)
    }
    
    static func insets(horizontal: CGFloat) -> UIEdgeInsets {
        insets(horizontal: horizontal, vertical: 0)
    }
    
    static func insets(vertical: CGFloat) -> UIEdgeInsets {
        insets(horizontal: 0, vertical: vertical)
    }
    
    // MARK: - Convenient properties
    
    var inversed: UIEdgeInsets {
        UIEdgeInsets(top: -top, left: -left, bottom: -bottom, right: -right)
    }
    
    var horizontal: CGFloat {
        left + right
    }
    
    var vertical: CGFloat {
        top + bottom
    }
}
