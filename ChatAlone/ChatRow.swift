//
//  ChatRow.swift
//  ChatAlone
//
//  Created by Min-Su Kim on 2022/08/20.
//

import Foundation
import SwiftUI

struct ChatRow: View {
  let chat: Chat
  
  var body: some View {
    HStack {
      if chat.uid == "other" {
        otherChat
      }
      Spacer()
      if chat.uid == "me" {
        myChat
      }
    }
    .padding(.leading, 16)
    .padding(.trailing, 16)
    .padding(.bottom, 16)
  }
}

extension ChatRow {
  var myChat: some View {
    HStack(alignment: .bottom) {
      Text(chat.getDate())
        .font(.system(size: 12))
        .foregroundColor(Color.secondaryBackground)
      Spacer().frame(width: 4)
      Text(chat.message)
        .padding(.horizontal, 12)
        .padding(.vertical, 8)
        .foregroundColor(.white)
        .background(Color.blue)
        .cornerRadius(16)
    }
    
  }
  
  var otherChat: some View {
    HStack(alignment: .bottom) {
      Text(chat.message)
        .padding(8)
        .foregroundColor(.white)
        .background(Color.secondaryBackground)
        .cornerRadius(16)
      Spacer().frame(width: 4)
      Text(chat.getDate())
        .font(.system(size: 12))
        .foregroundColor(Color.secondaryBackground)
    }
  }
}
