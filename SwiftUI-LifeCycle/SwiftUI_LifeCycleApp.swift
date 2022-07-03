//
//  SwiftUI_LifeCycleApp.swift
//  SwiftUI-LifeCycle
//
//  Created by Goutham S on 03/07/22.
//

import SwiftUI

@main
struct SwiftUI_LifeCycleApp: App {
    @Environment(\.scenePhase) var scenePhase
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .onChange(of: scenePhase) { phase in
            switch phase {
            case .active:
                print("Scene - Active")
            case .inactive:
                print("Scene - Inactive")
            case .background:
                print("Scene - Background")
            @unknown default:
                print("Scene - Unknown")
            }
        }
    }
}
