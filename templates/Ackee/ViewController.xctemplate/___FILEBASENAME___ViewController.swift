//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit
import ReactiveSwift

protocol ___VARIABLE_productName___FlowDelegate: class {

}

final class ___VARIABLE_productName___ViewController: ___VARIABLE_controllerSubclass___ {

    weak var flowDelegate: ___VARIABLE_productName___FlowDelegate?

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
