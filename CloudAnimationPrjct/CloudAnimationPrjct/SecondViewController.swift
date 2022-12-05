//
//  SecondViewController.swift
//  CloudAnimationPrjct
//
//  Created by Bimal@AppStation on 26/10/22.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var dismissButton: UIButton!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dismissButton.layer.cornerRadius = dismissButton.frame.size.width / 2

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonActionDismiss(sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }


}
