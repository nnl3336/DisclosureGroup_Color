//
//  DisclosureGroup_ColorApp.swift
//  DisclosureGroup_Color
//
//  Created by Yuki Sasaki on 2025/03/02.
//

import SwiftUI

@main
struct DisclosureGroup_ColorApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
