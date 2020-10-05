//
//  ButtonToggleApp.swift
//  ButtonToggle
//
//  Created by panjianting on 2020/9/30.
//

import SwiftUI

@main
struct ButtonToggleApp: App {
    
    @Environment(\.scenePhase) private var scenePhase;
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .onChange(of: scenePhase) { (phase) in
            if phase == .background{
                print("background");
            }
            if phase == .active{
                print("active")
            }
            if phase == .inactive{
                print("inactive");
            }
        }
    }
}
