//  ___FILEHEADER___

import Foundation
import ComposableArchitecture

public typealias ___VARIABLE_moduleName___Store = Store<
    ___VARIABLE_moduleName___State,
    ___VARIABLE_moduleName___Action
>
public typealias ___VARIABLE_moduleName___Reducer = AnyReducer<
    ___VARIABLE_moduleName___State,
    ___VARIABLE_moduleName___Action,
    ___VARIABLE_moduleName___Environment
>
typealias ___VARIABLE_moduleName___ViewStore = ViewStore<
    ___VARIABLE_moduleName___State,
    ___VARIABLE_moduleName___Action
>

// MARK: - Environment

public struct ___VARIABLE_moduleName___Environment {
    
    // MARK: - Initializers
    
    public init() {}
}

// MARK: - State

public struct ___VARIABLE_moduleName___ScreenState: Equatable {
    
    // MARK: - Initializers
    
    public init() {}
}

@dynamicMemberLookup
public struct ___VARIABLE_moduleName___State: Equatable {
    public var screenState: ___VARIABLE_moduleName___ScreenState
    
    public init(
        screenState: ___VARIABLE_moduleName___ScreenState
    ) {
        self.screenState = screenState
    }
    
    public subscript<Value>(
        dynamicMember keyPath: WritableKeyPath<___VARIABLE_moduleName___ScreenState, Value>
    ) -> Value {
        get { screenState[keyPath: keyPath] }
        set { screenState[keyPath: keyPath] = newValue }
    }
    
    public subscript<Value>(
        dynamicMember keyPath: KeyPath<___VARIABLE_moduleName___ScreenState, Value>
    ) -> Value {
        screenState[keyPath: keyPath]
    }
}

// MARK: - Action

public enum ___VARIABLE_moduleName___Action: Equatable {
    
}

// MARK: - Reducer

private let ___VARIABLE_reducer___MainReducer = 
___VARIABLE_moduleName___Reducer {
    state,
    action,
    environment in
    switch action {}
    
    return .none
}

public let ___VARIABLE_reducer___Reducer = 
___VARIABLE_moduleName___Reducer.combine(
    ___VARIABLE_reducer___MainReducer
)

