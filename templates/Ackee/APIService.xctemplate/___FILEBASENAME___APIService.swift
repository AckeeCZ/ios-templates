//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import ReactiveSwift

// sourcery:inline:___FILEBASENAMEASIDENTIFIER___.APIService
// sourcery:end

final class ___FILEBASENAMEASIDENTIFIER___: APIService {
    typealias Dependencies = HasNetwork

    private let network: Networking

    // MARK: - Initialization

    init(dependencies: Dependencies) {
        network = dependencies.network
    }

    // MARK: - Public API

}
