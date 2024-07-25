//
//  ContentView.swift
//  ReduxProject
//
//  Created by Глеб Клыга on 25.07.24.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var store: Store
    
    struct Props {
        let counter: Int
        let onIncrement: () -> Void
        let onDecrement: () -> Void
        let onAdd: (Int) -> Void
        
    }
    
    private func map(state: State) -> Props {
        Props(counter: state.counter, onIncrement: {
            store.dispatch(action: IncrementAction())
        }, onDecrement: {
            store.dispatch(action: DecrementAction())
        }, onAdd: {
            store.dispatch(action: AddAction(value: $0))
        })
    }
    
    
    
    var body: some View {
        let props = map(state: store.state)
        
        VStack{
            Text("\(props.counter)")
                .padding()
            Button("Increment") {
                props.onIncrement()
            }
            Button("Decrement") {
                props.onDecrement()
            }
            Button("Add") {
                props.onAdd(100)
            }
        }
        
    }
}

#Preview {
    let store = Store(reducer: reducer, state: State(counter: 0))
    return ContentView().environmentObject(store)
}
