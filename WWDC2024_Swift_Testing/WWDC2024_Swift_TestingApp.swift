//
//  WWDC2024_Swift_TestingApp.swift
//  WWDC2024_Swift_Testing
//
//  Created by Michel Storms on 18/06/2024.
//

import SwiftUI

@main
struct WWDC2024_Swift_TestingApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
