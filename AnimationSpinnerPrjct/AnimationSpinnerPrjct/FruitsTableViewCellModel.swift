//
//  FruitsTableViewCellModel.swift
//  AnimationSpinnerPrjct
//
//  Created by Bimal@AppStation on 26/10/22.
//

import Foundation

enum FruitsCellType {
    case fruitCell
}

class FruitTableViewCellModel {
    var identifier: String = "fruit.Cell"
    var cellType: FruitsCellType = .fruitCell
    var frutisDetails:Fruits = Fruits([:])

    init(strName: String, cellType: FruitsCellType) {
        self.frutisDetails.name = strName
        self.cellType = cellType
        switch cellType {
        case .fruitCell:
            identifier = "fruit.Cell"
        }
    }
    
    func setFruitName() ->String {
        return frutisDetails.name
    }
}
