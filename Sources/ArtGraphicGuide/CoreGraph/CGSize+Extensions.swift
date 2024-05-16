//
//  File.swift
//  
//
//  Created by Cunqi Xiao on 5/16/24.
//

import UIKit

public extension CGSize {
    static func +(lhs: CGSize, rhs: CGSize) -> CGSize {
        CGSize(width: lhs.width + rhs.width, height: lhs.height + rhs.height)
    }

    static func -(lhs: CGSize, rhs: CGSize) -> CGSize {
        CGSize(width: lhs.width - rhs.width, height: lhs.height - rhs.height)
    }

    static func *(lhs: CGSize, rhs: CGFloat) -> CGSize {
        CGSize(width: lhs.width * rhs, height: lhs.height * rhs)
    }

    static func *(lhs: CGFloat, rhs: CGSize) -> CGSize {
        CGSize(width: rhs.width * lhs, height: rhs.height * lhs)
    }

    static func /(lhs: CGSize, rhs: CGFloat) -> CGSize {
        CGSize(width: lhs.width / rhs, height: lhs.height / rhs)
    }

    static func <(lhs: CGSize, rhs: CGSize) -> Bool {
        lhs.width < rhs.width || lhs.height < rhs.height
    }

    static func ^(lhs: CGSize, rhs: CGSize) -> CGSize {
        CGSize(width: max(lhs.width, rhs.width), height: max(lhs.height, rhs.height))
    }

    static func square(_ value: CGFloat) -> CGSize {
        CGSize(width: value, height: value)
    }
}
