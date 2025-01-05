//
//  FundamentalsOfSwiftUiApp.swift
//  FundamentalsOfSwiftUi
//
//  Created by Pratik Ghadge on 01/01/25.
//

import SwiftUI

@main
struct FundamentalsOfSwiftUiApp: App {
    
    init() {
        // Perform setup tasks here
        print("Perform setup tasks here")
    }
    
    @Environment(\.scenePhase) private var scenePhase
    var body: some Scene {
        WindowGroup {
//            ContentView()
//            UIComponents()
            Profile()
        }
        .onChange(of: scenePhase) { newPhase in
            switch newPhase {
            case .active:
                print("App is now active")
            case .inactive:
                print("App is inactive")
            case .background:
                print("App is in the background")
            @unknown default:
                print("App entered an unknown state")
            }
        }
    }
}
