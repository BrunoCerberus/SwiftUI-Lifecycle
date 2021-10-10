//
//  SwiftUI_LifecycleApp.swift
//  SwiftUI-Lifecycle
//
//  Created by bruno on 09/07/21.
//

import SwiftUI
import CoreData

@main
struct SwiftUI_LifecycleApp: App {
    
    @Environment(\.scenePhase) private var scenePhase
    
    var body: some Scene {
        WindowGroup {
            ContentView(presenter: ContentPresenter())
        }
        .onChange(of: scenePhase) { phase in
            if phase == .background {
                debugPrint("BACKGROUND")
            } else if phase == .inactive {
                debugPrint("INACTIVE")
            } else if phase == .active {
                debugPrint("ACTIVE")
            }
        }
    }
}
