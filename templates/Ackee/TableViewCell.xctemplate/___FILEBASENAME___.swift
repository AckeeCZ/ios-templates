//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//
import UIKit
import ReactiveCocoa

class ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_cellSubclass___ {
    
    //MARK: View Model
    var viewModel = MutableProperty<___VARIABLE_viewModel___?>(nil)
    
    //MARK: Initialization
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupBindings()
    }
    
    //MARK: Bindings
    func setupBindings(){
        let vm = viewModel.producer.ignoreNil()
        //label.rac_text <~ vm.flatMap(.Latest){ $0.myProperty.producer }.map { ... }
    }
    
    //MARK: Other
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


