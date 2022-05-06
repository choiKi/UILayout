//
//  UILayoutApp.swift
//  UILayout
//
//  Created by 최기훈 on 2022/05/06.
//

import SwiftUI

@main
struct UILayoutApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
