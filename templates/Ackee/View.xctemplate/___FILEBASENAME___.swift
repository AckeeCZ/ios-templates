//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import UIKit
import ReactiveSwift

class ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_viewSubclass___ {

    //MARK: View model

    let viewModel: ___VARIABLE_viewModel___

    //MARK: Initializers

    required init(viewModel: ___VARIABLE_viewModel___) {
        self.viewModel = viewModel

        super.init(frame: .zero)

        setupBindings()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: Helpers

    private func setupBindings(){
        let vm = viewModel.producer.ignoreNil()
        //label.rac_text <~ vm.flatMap(.Latest){ $0.myProperty.producer }.map { ... }
    }
}
