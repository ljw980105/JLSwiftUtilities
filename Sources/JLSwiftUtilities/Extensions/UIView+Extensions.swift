//
//  UIView+Extensions.swift
//  JLSwiftUtilities
//
//  Created by Jing Wei Li on 7/17/19.
//  Copyright © 2019 Jing Wei Li. All rights reserved.
//

import UIKit

public extension UIView {
    /// Enables autolayout for any `UIView`s whose interfaces are designed in a Xibs.
    /// - Call it in `viewWillMoveToSuperview()`.
    /// - parameter contentView: The outermost view of the view hierarchy.
    func enableAutolayoutForXib(on contentView: UIView) {
        addSubview(contentView)
        addConstraint(NSLayoutConstraint(item: self, attribute: .width, relatedBy: .equal, toItem: contentView, attribute: .width, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: self, attribute: .height, relatedBy: .equal, toItem: contentView, attribute: .height, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: self, attribute: .centerX, relatedBy: .equal, toItem: contentView, attribute: .centerX, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: self, attribute: .centerY, relatedBy: .equal, toItem: contentView, attribute: .centerY, multiplier: 1, constant: 0))
        contentView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    /// Add a rounded corner to a `UIView`.
    func addRoundCorners(cornerRadius: CGFloat = 20.0) {
        layer.cornerRadius = cornerRadius
        clipsToBounds = true
    }
}
