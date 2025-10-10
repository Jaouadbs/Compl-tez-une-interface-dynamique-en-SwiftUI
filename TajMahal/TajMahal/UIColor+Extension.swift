//
//  UIColor+Extension.swift
//  TajMahal
//
//  Created by Jaouad on 25/09/2025.
//

import UIKit
import SwiftUI

public extension UIColor {
    convenience init(hex rgb: Int) {
        let red = (rgb >> 16) & 0xFF
        let green = (rgb >> 8) & 0xFF
        let blue = rgb & 0xFF
        
        assert(red >= 0 && red <= 255, "Invalid red color value")
        assert(green >= 0 && green <= 255, "Invalid green color value")
        assert(blue >= 0 && blue <= 255, "Invalid blue color value")
        
        self.init(
            red: CGFloat(red) / 255.0,
            green: CGFloat(green) / 255.0,
            blue: CGFloat(blue) / 255.0,
            alpha: 1.0
        )
    }
}

public extension UIColor {
    /// Creates a SwiftUI color from a UIKit color instance.
    var color: Color {
        Color(self)
    }
}
