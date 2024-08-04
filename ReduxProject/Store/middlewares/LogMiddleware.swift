//
//  LogMiddleware.swift
//  ReduxProject
//
//  Created by Глеб Клыга on 4.08.24.
//

import Foundation

func logMiddleware() -> Middleware<AppState> {
    
    return { state, action, dispatch in
        print("LOG Middleware")
        
    }
}
