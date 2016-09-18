//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//
import UIKit

class ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_cellSubclass___ {
    
    //MARK: View Model
    var viewModel: ___VARIABLE_viewModel___! {
        didSet {
            setupBindings()
        }
    }
    
    //MARK: Initialization
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    //MARK: Bindings
    func setupBindings(){
        
    }
    
    //MARK: Other
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


