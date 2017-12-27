//
//  StringExtensions.swift
//  ExtensionsDemo
//
//  Copyright (c) 2017 Oak Leaf Enterprises, Inc. All rights reserved.
//

import Foundation
import UIKit

extension String {
    
    // Checks if the string is nil or empty (after trimming white space)
    public static func isNilOrEmpty(_ string: String?) -> Bool {
        
        switch string?.trimmingCharacters(in: CharacterSet.whitespaces) {
        case .some(let nonNilString):
            return nonNilString.isEmpty
        default:
            return true
        }
    }
    
    // Replaces the pathExtension property removed from String in Swift 2.0
    var pathExtension: String {
        
        get {
            return (self as NSString).pathExtension
        }
    }
}



