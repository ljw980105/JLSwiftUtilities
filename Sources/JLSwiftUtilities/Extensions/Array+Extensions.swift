//
//  Array+Extensions.swift
//  smore
//
//  Created by Jing Wei Li on 2/21/19.
//  Copyright © 2019 Jing Wei Li. All rights reserved.
//

import Foundation

public extension Array {
    /// An array slice solution to avoid the memory issues created with the default `ArraySlice`.
    ///
    /// This is because the default ArraySlice, e.g.
    /// ```
    /// range.lowerBound ..< range.upperBound
    /// ```
    /// is discouraged from long term use. Using it to slice array can therefore cause
    /// the infamous `EXC BAD ACCESS` error. For more details see
    /// https://developer.apple.com/documentation/swift/arrayslice
    /// - parameter begin: The index to begin slicing from/
    /// - parameter end: the index to end the slicing operation.
    func sliced(from begin: Int, to end: Int) -> [Element] {
        var result: [Element] = []
        for i in begin ..< end {
            result.append(self[i])
        }
        return result
    }
}

public extension Array where Element: Equatable & Hashable {
    
    /// Removes duplicates while preserving order.
    func duplicatesRemoved() -> [Element] {
        var set: Set<Element> = Set()
        return self.reduce([], { temp, next in
            if !set.contains(next) {
                set.insert(next)
                return temp + [next]
            }
            return temp
        })
    }
}
