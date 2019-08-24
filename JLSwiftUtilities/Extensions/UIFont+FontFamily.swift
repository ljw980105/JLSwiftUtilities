//
//  UIFont+FontFamily.swift
//  JLSwiftUtilities
//
//  Created by Jing Wei Li on 8/18/19.
//  Copyright © 2019 Jing Wei Li. All rights reserved.
//

import UIKit

extension UIFont {
    convenience init?(family: FontFamily, variant: FontVariant, size: CGFloat) {
        self.init(name: "\(family.rawValue)-\(variant.rawValue)", size: size)
    }
}
