//
//  Haptic.swift
//  smartdesk
//
//  Created by Jing Wei Li on 10/24/18.
//  Copyright © 2018 Jing Wei Li. All rights reserved.
//

import UIKit

/// Singleton class to generate haptic feedbacks
public class Haptic {
    /// Singleton instance for accessing all the haptic methods
    public static let current = Haptic()
    
    private lazy var mediumImpactGenerator: UIImpactFeedbackGenerator = {
        return UIImpactFeedbackGenerator(style: .medium)
    }()
    
    private lazy var lightImpactGenerator: UIImpactFeedbackGenerator = {
        return UIImpactFeedbackGenerator(style: .light)
    }()
    
    private lazy var heavyImpactGenerator: UIImpactFeedbackGenerator = {
        return UIImpactFeedbackGenerator(style: .heavy)
    }()
    
    private lazy var selectionHaptic: UISelectionFeedbackGenerator = {
        return UISelectionFeedbackGenerator()
    }()
    
    private lazy var notificationGenerator: UINotificationFeedbackGenerator = {
        return UINotificationFeedbackGenerator()
    }()
    
    private init() {}
    
    // MARK: - Impact Generators
    
    public func mediumImpact() {
        mediumImpactGenerator.impactOccurred()
    }
    
    public func lightImpact() {
        lightImpactGenerator.impactOccurred()
    }
    
    public func heavyImpact() {
        heavyImpactGenerator.impactOccurred()
    }
    
    // MARK: - Notification Generators
    
    public func notifySuccess() {
        notificationGenerator.notificationOccurred(.success)
    }
    
    public func notifyWarning() {
        notificationGenerator.notificationOccurred(.warning)
    }
    
    public func notifyError() {
        notificationGenerator.notificationOccurred(.error)
    }
    
    // MARK: - Selection Feedback
    
    /// Generate a light haptic tap similar to scrolling thru table views through
    /// their indexes.
    public func selectionChanged() {
        selectionHaptic.selectionChanged()
    }
}
