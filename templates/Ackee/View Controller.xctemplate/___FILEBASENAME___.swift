//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import UIKit
import ReactiveCocoa

class ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_controllerSubclass___ {
    
    //MARK: Dependencies
    let viewModel:___VARIABLE_viewModel___
    
    
    //MARK: Initialization
    required init(viewModel:___VARIABLE_viewModel___){
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    //MARK: Bindings
    func setupBindings(){
        
    }
    
    //MARK: Life cycle
    override func loadView(){
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupBindings()
    }
    
    
    //MARK: Other
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}