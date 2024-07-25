//
//  AppReducer.swift
//  ReduxProject
//
//  Created by Глеб Клыга on 25.07.24.
//

import Foundation

func appReducer(_ state: AppState, _ action: Action) -> AppState {
    
    var state = state
    state.counterState = counterReducer(state.counterState, action)
    state.taskState = taskReducer(state.taskState, action)
    return state
}
