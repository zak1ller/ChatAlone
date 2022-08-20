//
//  ChatAloneApp.swift
//  ChatAlone
//
//  Created by Min-Su Kim on 2022/08/19.
//

import SwiftUI

@main
struct ChatAloneApp: App {
  var body: some Scene {
    WindowGroup {
      NavigationView {
        ContentView()
          .navigationTitle(Text("Chat"))
          .navigationBarTitleDisplayMode(.inline)
      }
      .onAppear {
        UITextView.appearance().backgroundColor = .clear
        UITextView.appearance().textContainerInset = UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0)
      }
    }
  }
}
