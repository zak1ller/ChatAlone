//
//  Chat.swift
//  ChatAlone
//
//  Created by Min-Su Kim on 2022/08/19.
//

import Foundation

struct Chat {
  let id = UUID().uuidString
  let uid: String
  let message: String
  let date = Date()
}

extension Chat: Identifiable {}

extension Chat {
  func getDate() -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.locale = Locale(identifier: "ko_kr")
    dateFormatter.dateFormat = "a h:mm"
    let str = dateFormatter.string(from: date)
    return str
  }
}
