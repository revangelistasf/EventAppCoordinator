//
//  UIStoryboard+Extensions.swift
//  EventAppCoordinator
//
//  Created by Roberto Evangelista on 18/10/20.
//
// swiftlint:disable force_cast

import UIKit

protocol Storyboarded {
    static func instantiate() -> Self
}

extension Storyboarded where Self: UIViewController {
    static func instantiate() -> Self {
        let fullName = NSStringFromClass(self)
        let className = fullName.components(separatedBy: ".")[1]
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        return storyboard.instantiateViewController(withIdentifier: className) as! Self
    }
}
