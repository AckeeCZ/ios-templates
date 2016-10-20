//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Foundation
import Argo
import Curry

struct ___FILEBASENAMEASIDENTIFIER___: Decodable {
    
    let first: Int
    let second: String?
    
    static func decode(json: JSON) -> Decoded<___FILEBASENAMEASIDENTIFIER___> {
        
        return curry(self.init)
            <^> json <| "first"
            <*> json <|? "second"
    
    }
}
