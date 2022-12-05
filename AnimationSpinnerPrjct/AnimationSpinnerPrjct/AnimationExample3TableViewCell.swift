//
//  AnimationExample3TableViewCell.swift
//  AnimationSpinnerPrjct
//
//  Created by Bimal@AppStation on 26/10/22.
//

import UIKit

class AnimationExample3TableViewCell: UITableViewCell {
    
    @IBOutlet weak var labelFruitsName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    var cellModel: FruitTableViewCellModel! {
        didSet {
            setFruitItems()
        }
    }
    
    func setFruitItems() {
        labelFruitsName.text = cellModel.setFruitName()
    }

}
