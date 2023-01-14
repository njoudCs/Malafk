//
//  MalafkApp.swift
//  Malafk
//
//  Created by Njoud saud Al-Najem on 17/06/1444 AH.
//

import SwiftUI

@main
struct MalafkApp: App {
    @StateObject private var dataController = DataController()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext,
                                             dataController.container.viewContext)
        }
    }
}
