//
//  Fruits.swift
//  AnimationSpinnerPrjct
//
//  Created by Bimal@AppStation on 26/10/22.
//

import Foundation

class Fruits: NSObject {
    var name: String = ""
    
    init(_ dict:[String: Any]) {
        name = dict[""] as? String ?? ""
    }
}
