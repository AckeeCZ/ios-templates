//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit
import ReactiveSwift

final class ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_controllerSubclass___ {

    // MARK: Dependencies

    private let viewModel: ___VARIABLE_viewModel___

    // MARK: Initializers

    init(viewModel: ___VARIABLE_viewModel___) {
        self.viewModel = viewModel

        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: View life cycle

    override func loadView() {
        super.loadView()

    }

    override func viewDidLoad() {
        super.viewDidLoad()

        setupBindings()
    }

    // MARK: Helpers

    private func setupBindings() {

    }

}
