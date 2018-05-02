//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import ReactiveSwift

protocol ___FILEBASENAMEASIDENTIFIER___ing {
	var actions: ___VARIABLE_productName___Actions { get }
}

extension ___FILEBASENAMEASIDENTIFIER___ing where Self: ___VARIABLE_productName___Actions {
    var actions: ___VARIABLE_productName___Actions { return self }
}

class ___FILEBASENAMEASIDENTIFIER___: ___FILEBASENAMEASIDENTIFIER___ing {

    // MARK: Initializers
    required init() {
        setupBindings()
    }

    // MARK: Helpers
    private func setupBindings() {

    }
}
