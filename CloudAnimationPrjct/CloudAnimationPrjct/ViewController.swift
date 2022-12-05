//
//  ViewController.swift
//  CloudAnimationPrjct
//
//  Created by Bimal@AppStation on 25/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var menuButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuButton.layer.cornerRadius = menuButton.frame.size.width / 2
        // Do any additional setup after loading the view.
    }
}

