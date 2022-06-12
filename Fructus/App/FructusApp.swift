//
//  FructusApp.swift
//  Fructus
//
//  Created by Nicholas on 10/06/2022.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboadingView()
            } else {
                ContentView() 
            }
        }
    }
}
