//
//  ReduxProjectApp.swift
//  ReduxProject
//
//  Created by Глеб Клыга on 25.07.24.
//

import SwiftUI

@main
struct ReduxProjectApp: App {
    var body: some Scene {
        
        let store = Store(reducer: reducer)
        WindowGroup {
            ContentView().environmentObject(store)
        }
    }
}
