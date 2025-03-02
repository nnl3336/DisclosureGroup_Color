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
        DisclosureGroup(
            content: {
                Text("ここに詳細情報を表示")
                    .padding()
                    .background(Color.yellow.opacity(0.3)) // 展開時の背景色
                    .cornerRadius(8)
                    .foregroundColor(.black) // 文字色
            },
            label: {
                HStack {
                    Image(systemName: "info.circle.fill")
                    Text("詳細を表示")
                        .font(.headline)
                }
                .padding()
                .background(isExpanded ? Color.blue : Color.gray.opacity(0.2)) // タイトルの背景色
                .foregroundColor(isExpanded ? .white : .black) // タイトルの文字色
                .cornerRadius(10)
            }
        )
        .padding()
    }
}
