//
//  ContentView.swift
//  ChatAlone
//
//  Created by Min-Su Kim on 2022/08/19.
//

import SwiftUI

struct ContentView: View {
  @StateObject private var viewModel = ContentViewModel()
  @FocusState private var focused: Bool
  
  var body: some View {
    VStack {
      listView
      Spacer()
      inputTextField
    }
  }
}

extension ContentView {
  var listView: some View {
    List(viewModel.chats) {
      ChatRow(chat: $0)
        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
        .listRowSeparator(.hidden)
    }
    .listStyle(.plain)
  }
  
  var inputTextField: some View {
    ZStack() {
      Rectangle()
        .cornerRadius(16)
        .foregroundColor(.itemBackground)
        .padding(.trailing, 48)
      HStack() {
        TextEditor(text: $viewModel.textFieldValue)
          .font(.system(size: 17))
          .foregroundColor(.white)
          .focused($focused)
          .padding(.leading, 8)
          .padding(.trailing, 8)
        inputTextFieldSendButton
      }
      HStack {
        Text(viewModel.textFieldValue)
          .opacity(0)
          .font(.system(size: 17))
          .padding(.leading, 8)
          .padding(.trailing, 8)
        Spacer()
      }
      
    }
    .frame(maxHeight: 95)
    .fixedSize(horizontal: false, vertical: true)
    .padding(.leading, 16)
    .padding(.trailing, 16)
    .padding(.bottom, 16)
  }
  
  var inputTextFieldSendButton: some View {
    Button(action: {
      focused = viewModel.enter()
    }) {
      Circle()
        .frame(width: 40, height: 40)
        .overlay {
          Image(systemName: "paperplane.fill")
            .frame(width: 32, height: 32)
            .foregroundColor(.white)
        }
    }
  }
}
