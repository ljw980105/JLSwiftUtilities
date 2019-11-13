//
//  UIImage+Extensions.swift
//  JLSwiftUtilities
//
//  Created by Jing Wei Li on 7/17/19.
//  Copyright © 2019 Jing Wei Li. All rights reserved.
//

import UIKit

public extension UIImage {
    
    /// Generate an image from a color, at the designated size.
    class func imageFrom(
        color: UIColor,
        at size: CGSize = CGSize(width: 500, height: 500)) -> UIImage?
    {
        UIGraphicsBeginImageContextWithOptions(size, true, 0)
        defer {
            UIGraphicsEndImageContext()
        }
        
        let context = UIGraphicsGetCurrentContext()
        color.setFill()
        context?.fill(CGRect.init(x: 0, y: 0, width: size.width, height: size.height))
        return UIGraphicsGetImageFromCurrentImageContext()
    }
    
}
