//
//  ContentView.swift
//  DisclosureGroup_Color
//
//  Created by Yuki Sasaki on 2025/03/02.
//

import SwiftUI
import CoreData

struct CustomDisclosureStyle: DisclosureGroupStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack(alignment: .leading) {
            HStack {
                configuration.label
                    .font(.headline)
                Spacer()
                Image(systemName: configuration.isExpanded ? "chevron.down" : "chevron.right")
            }
            .contentShape(Rectangle()) // タップ範囲を拡大
            .onTapGesture {
                withAnimation {
                    configuration.isExpanded.toggle()
                }
            }

            if configuration.isExpanded {
                configuration.content
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 3)
    }
}

struct ContentView: View {
    @State private var isExpanded = false

    var body: some View {
        DisclosureGroup("詳細情報", isExpanded: $isExpanded) {
            Text("カスタムスタイルを適用")
        }
        .disclosureGroupStyle(CustomDisclosureStyle())
        .padding()
    }
}
