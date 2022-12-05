//
//  ButtonAnimationViewController.swift
//  AnimationSpinnerPrjct
//
//  Created by Bimal@AppStation on 26/10/22.
//

import UIKit

class ButtonAnimationViewController: UIViewController {

    @IBOutlet weak var buutonClick: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonAction(sneder: UIButton) {
        UIView.animate(withDuration: 1.0) {
            self.buutonClick.frame = CGRect(x: 0, y: 0, width: 400, height: 100)
            self.buutonClick.center = self.view.center
        }
    }

}



// Expandable Custom TableViewCell with Animations with One Section (Source Code Included).
