//
//  ReduxProjectApp.swift
//  ReduxProject
//
//  Created by Глеб Клыга on 25.07.24.
//

import SwiftUI

@main
struct HelloReduxApp: App {
    var body: some Scene {
       
        let store = Store(reducer: appReducer, state: AppState(), middlewares: [logMiddleware(), incrementMiddleware()])
        
        WindowGroup {
            ContentView().environmentObject(store)
        }
    }
}
