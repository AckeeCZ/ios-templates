//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import ReactiveSwift
import ACKategories

protocol ___FILEBASENAMEASIDENTIFIER___ingActions {

}

protocol ___FILEBASENAMEASIDENTIFIER___ing {
	var actions: ___FILEBASENAMEASIDENTIFIER___ingActions { get }
}

extension ___FILEBASENAMEASIDENTIFIER___ing where Self: ___FILEBASENAMEASIDENTIFIER___ingActions {
    var actions: ___FILEBASENAMEASIDENTIFIER___ingActions { return self }
}

final class ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_modelSubclass___, ___FILEBASENAMEASIDENTIFIER___ing, ___FILEBASENAMEASIDENTIFIER___ingActions {

    typealias Dependencies = HasNoDependency

    // MARK: - Initialization

    init(dependencies: Dependencies) {
        super.init()

        setupBindings()
    }

    // MARK: - Helpers
    
    private func setupBindings() {

    }
}
