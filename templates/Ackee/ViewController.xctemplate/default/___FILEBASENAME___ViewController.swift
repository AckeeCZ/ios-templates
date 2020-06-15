//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit
import ReactiveSwift
import ACKategories

protocol ___VARIABLE_productName___FlowDelegate: AnyObject {

}

final class ___VARIABLE_productName___ViewController: ___VARIABLE_controllerSubclass___ {

    weak var flowDelegate: ___VARIABLE_productName___FlowDelegate?

    private let viewModel: ___VARIABLE_viewModel___

    // MARK: - Initialization

    init(viewModel: ___VARIABLE_viewModel___) {
        self.viewModel = viewModel

        super.init()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Controller lifecycle

    override func loadView() {
        super.loadView()

    }

    override func viewDidLoad() {
        super.viewDidLoad()

        setupBindings()
    }

    // MARK: - Helpers

    private func setupBindings() {

    }

}
