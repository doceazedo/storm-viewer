//
//  StormViewerApp.swift
//  StormViewer
//
//  Created by Doce on 03.10.23.
//

import SwiftUI

@main
struct StormViewerApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .commands {
            CommandGroup(replacing: .newItem) {}
            CommandGroup(replacing: .undoRedo) {}
            CommandGroup(replacing: .pasteboard) {}
        }
    }
}
