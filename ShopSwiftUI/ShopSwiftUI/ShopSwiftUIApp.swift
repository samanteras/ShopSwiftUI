//
//  ShopSwiftUIApp.swift
//  ShopSwiftUI
//
//  Created by MAC13 on 13.03.2023.
//

import SwiftUI

@main
struct ShopSwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
