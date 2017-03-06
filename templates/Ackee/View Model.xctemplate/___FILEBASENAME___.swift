//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import ReactiveSwift

// MARK: Protocols
protocol ___FILEBASENAMEASIDENTIFIER___Inputs {
}

protocol ___FILEBASENAMEASIDENTIFIER___Outputs {
}

protocol ___FILEBASENAMEASIDENTIFIER___Actions {
}

protocol ___FILEBASENAMEASIDENTIFIER___ing {
    var inputs: ___FILEBASENAMEASIDENTIFIER___Inputs { get }
    var outputs: ___FILEBASENAMEASIDENTIFIER___Outputs { get }
    var actions: ___FILEBASENAMEASIDENTIFIER___Actions { get }
}

// MARK: ___FILEBASENAMEASIDENTIFIER___
final class ___FILEBASENAMEASIDENTIFIER___: ___FILEBASENAMEASIDENTIFIER___ing, ___FILEBASENAMEASIDENTIFIER___Inputs, ___FILEBASENAMEASIDENTIFIER___Outputs, ___FILEBASENAMEASIDENTIFIER___Actions {
    private let (lifetime, token) = Lifetime.make()
    
    var inputs: ___FILEBASENAMEASIDENTIFIER___Inputs { return self }
    var outputs: ___FILEBASENAMEASIDENTIFIER___Outputs { return self }
    var actions: ___FILEBASENAMEASIDENTIFIER___Actions { return self }
    
    // MARK: Dependencies
    
    // MARK: Initializers
    required init() {
    }
}
