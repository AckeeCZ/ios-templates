// ___FILEHEADER___

import ComposableArchitecture
import SwiftUI

public struct ___VARIABLE_moduleName___View: View {

    // MARK: - Private properties
    
    private let store: ___VARIABLE_moduleName___Store
    private let viewStore: ___VARIABLE_moduleName___ViewStore

    // MARK: - Initializers

    public init(
        store: ___VARIABLE_moduleName___Store
    ) {
        self.store = store
        self.viewStore = ViewStore(store)
    }

    // MARK: - UI
    
    public var body: some View {
        Text("___VARIABLE_moduleName___")
	}
}

// MARK: - Previews

#if DEBUG
@available(iOSApplicationExtension, unavailable)
struct OwnAccountsTransactionView_Preview: PreviewProvider {
    static var previews: some View {
        ___VARIABLE_moduleName___View(
            store:
                    .init(
                        initialState: .init(
                            screenState: .init()
                        ),
                        reducer: ___VARIABLE_reducer___Reducer,
                        environment: .init()
                    )
        )    
	}
}
#endif

