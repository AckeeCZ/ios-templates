//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import UIKit
import ReactiveSwift

class ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_cellSubclass___ {

    // MARK: View model

    let viewModel = MutableProperty<___VARIABLE_viewModel___?>(nil)

    // MARK: Initializers

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        setupBindings()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: Helpers
    private func setupBindings() {
        let vm = viewModel.producer.skipNil()
        //label.rac_text <~ vm.flatMap(.Latest) { $0.myProperty.producer }.map { ... }
    }
}
