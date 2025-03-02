//
//  ContentView.swift
//  DisclosureGroup_Color
//
//  Created by Yuki Sasaki on 2025/03/02.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State private var isExpanded = false

    var body: some View {
        DisclosureGroup("詳細を表示", isExpanded: $isExpanded) {
            Text("ここに詳細情報を表示")
                .padding()
                .background(Color.yellow.opacity(0.3)) // 展開時の背景色
                .cornerRadius(8)
                .foregroundColor(.black) // 文字色
        }
        .padding()
        .background(isExpanded ? Color.blue.opacity(0.2) : Color.gray.opacity(0.2)) // タイトル部分の背景色
        .foregroundColor(isExpanded ? .white : .black) // タイトルの文字色
        .cornerRadius(10)
    }
}
