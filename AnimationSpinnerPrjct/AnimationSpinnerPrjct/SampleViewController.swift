//
//  SampleViewController.swift
//  AnimationSpinnerPrjct
//
//  Created by Bimal@AppStation on 16/11/22.
//

import UIKit

class SampleViewController: UIViewController {
    
    @IBOutlet weak var labelInSample: UILabel!
    @IBOutlet weak var centerAlignUser: NSLayoutConstraint!
    @IBOutlet weak var lefttoRight: NSLayoutConstraint!
    @IBOutlet weak var textFieldSample: UITextField!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        centerAlignUser.constant = 0
        lefttoRight.constant = 0
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    @IBAction func buttonAction(sender: UIButton) {
        labelInSample.text = textFieldSample.text
        if textFieldSample.text?.isEmpty == false {
            UIView.animate(withDuration: 1, delay: 0.0, options: .curveEaseOut, animations: {
                self.centerAlignUser.constant = self.view.bounds.width - 50
                self.view.layoutIfNeeded()
            }, completion: nil)
            
            UIView.animate(withDuration: 1, delay: 0.0, options: .curveEaseOut, animations: {
                self.lefttoRight.constant = self.view.bounds.width - 50
                self.view.layoutIfNeeded()
            }, completion: nil)
        }
        else {
            print("Error")
        }
       
    }
}
