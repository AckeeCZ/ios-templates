//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import UIKit

class ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_viewSubclass___ {
    
    //MARK: View Model
    var viewModel: ___VARIABLE_viewModel___!
    
    //MARK: Initialization
    init(viewModel: ___VARIABLE_viewModel___) {
        super.init(frame: CGRectZero)
        self.viewModel = viewModel
        setupBindings()
    }
    
    //MARK:Bindings
    func setupBindings(){
        
    }
    
    //MARK: Other
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

