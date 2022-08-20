//
//  Color+Extension.swift
//  ChatAlone
//
//  Created by Min-Su Kim on 2022/08/19.
//

import Foundation
import SwiftUI

extension Color {
  static let secondaryBackground = Color(hex: "#424242")
  static let itemBackground = Color(hex: "#757575")
}

extension Color {
  init(hex: String) {
    let scanner = Scanner(string: hex)
    _ = scanner.scanString("#")
    
    var rgb: UInt64 = 0
    scanner.scanHexInt64(&rgb)
    
    let r = Double((rgb >> 16) & 0xFF) / 255.0
    let g = Double((rgb >>  8) & 0xFF) / 255.0
    let b = Double((rgb >>  0) & 0xFF) / 255.0
    self.init(red: r, green: g, blue: b)
  }
}

extension Color {
  var uiColor: UIColor? {
    return UIColor(self)
  }
}
