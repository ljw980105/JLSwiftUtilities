//
//  UITabBarController+Extensions.swift
//  JLSwiftUtilities
//
//  Created by Jing Wei Li on 8/23/19.
//  Copyright © 2019 Jing Wei Li. All rights reserved.
//

import UIKit

extension UITabBarController {
    /// Remove all texts from the tab bar and then move the icon down.
    /// - To use this method, call it inside any view controllers:
    /// ```
    /// tabBarController?.removeText()
    /// ```
    /// - The resulting tab bar looks like Instagram's.
    func removeText() {
        tabBar.items?.forEach { item in
            item.title = ""
            item.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
        }
    }
}

