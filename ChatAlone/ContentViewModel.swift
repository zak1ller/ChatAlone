//
//  ContentViewModel.swift
//  ChatAlone
//
//  Created by Min-Su Kim on 2022/08/19.
//

import Foundation
import Combine

final class ContentViewModel: ObservableObject {
  @Published var chats: [Chat] = []
  @Published var textFieldValue = ""
}

extension ContentViewModel {
  func enter() -> Bool {
    if textFieldValue.isEmpty { return true }
    let uid = textFieldValue.contains(":other:") ? "other" : "me"
    
    textFieldValue = textFieldValue.replacingOccurrences(of: ":other:", with: "")
    textFieldValue = textFieldValue.replacingOccurrences(of: ":me:", with: "")
    
    let newItem = Chat(uid: uid, message: textFieldValue)
    chats.append(newItem)
    textFieldValue = ""
    return true
  }
}
