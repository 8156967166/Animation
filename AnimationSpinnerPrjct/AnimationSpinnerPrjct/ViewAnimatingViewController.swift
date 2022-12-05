//
//  ViewAnimatingViewController.swift
//  AnimationSpinnerPrjct
//
//  Created by Bimal@AppStation on 26/10/22.
//

import UIKit

class ViewAnimatingViewController: UIViewController {

    @IBOutlet weak var animationView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonAction(sender: UIButton) {
        UIView.animate(withDuration: 1, delay: 0.5, animations: {
            self.animationView.backgroundColor = .systemRed
            self.animationView.frame.size.height += 10
            self.animationView.frame.size.width += 10
        }) { _ in
            
            UIView.animate(withDuration: 2, delay: 1, options: .curveEaseIn) {
                self.animationView.backgroundColor = .blue
                self.animationView.frame.origin.y += 50
            }
        }
        
    }

}
