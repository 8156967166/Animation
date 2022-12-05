//
//  AnimationExample1ViewController.swift
//  AnimationSpinnerPrjct
//
//  Created by Bimal@AppStation on 26/10/22.
//

import UIKit

class AnimationExample1ViewController: UIViewController {

    @IBOutlet weak var centerAlignUser: NSLayoutConstraint!
    @IBOutlet weak var centerAlignPassword: NSLayoutConstraint!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        centerAlignUser.constant -= view.bounds.width
        centerAlignPassword.constant -= view.bounds.width
        loginButton.alpha = 0.0
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        UIView.animate(withDuration: 1, delay: 0.0, options: .curveEaseOut, animations: {
            self.centerAlignUser.constant += self.view.bounds.width
            self.view.layoutIfNeeded()
        }, completion: nil)
        UIView.animate(withDuration: 1, delay: 0.3, options: .curveEaseOut, animations: {
            self.centerAlignPassword.constant += self.view.bounds.width
            self.view.layoutIfNeeded()
        }, completion: nil)
        UIView.animate(withDuration: 1, delay: 0.4, options: .curveEaseOut, animations: {
            self.loginButton.alpha = 1
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
    
    @IBAction func buttonActionLogin(sender: UIButton) {
//        let bounds = self.loginButton.bounds
//
//        UIView.animate(withDuration: 1.0, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: nil, animations: {
//            self.loginButton.bounds = CGRect(x: bounds.origin.x - 20, y: bounds.origin.y, width: bounds.size.width + 60, height: bounds.size.height)
//            self.loginButton.isEnabled = false
//        }, completion: nil)
    }

}
