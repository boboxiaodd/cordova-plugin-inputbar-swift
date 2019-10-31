//
//  KeyboardEvent.swift
//  ImagePicker
//
//  Created by bobo on 2019/10/26.
//

import Foundation

/// Keyboard events that can happen. Translates directly to `UIKeyboard` notifications from UIKit.
public enum KeyboardEvent {
    
    /// Event raised by UIKit's `.UIKeyboardWillShow`.
    case willShow
    
    /// Event raised by UIKit's `.UIKeyboardDidShow`.
    case didShow
    
    /// Event raised by UIKit's `.UIKeyboardWillShow`.
    case willHide
    
    /// Event raised by UIKit's `.UIKeyboardDidHide`.
    case didHide
    
    /// Event raised by UIKit's `.UIKeyboardWillChangeFrame`.
    case willChangeFrame
    
    /// Event raised by UIKit's `.UIKeyboardDidChangeFrame`.
    case didChangeFrame
    
    /// Non-keyboard based event raised by UIKit
    case unknown
    
}
