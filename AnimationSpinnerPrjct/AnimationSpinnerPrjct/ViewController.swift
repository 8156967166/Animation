//
//  ViewController.swift
//  AnimationSpinnerPrjct
//
//  Created by Bimal@AppStation on 25/10/22.
//
import UIKit
import TransitionButton

class ViewController: UIViewController {

    let button = TransitionButton(frame: CGRect(x: 0, y: 0, width: 250, height: 50))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.center = view.center
        button.backgroundColor = .systemRed
        button.setTitle("Continue", for: .normal)
        button.layer.cornerRadius = 12
        button.addTarget(self, action: #selector(didTabButton), for: .touchUpInside)
        button.spinnerColor = .white
        view.addSubview(button)
        // Do any additional setup after loading the view.
    }
    
    @objc func didTabButton() {
        button.startAnimation()
        DispatchQueue.main.asyncAfter(deadline: .now()+4) {
            self.button.stopAnimation(animationStyle: .expand, revertAfterDelay: 1) {
                DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                    let vc = SecondViewController()
                    self.present(vc, animated: true, completion: nil)
                }
         
            }
        }
    }
}


class SecondViewController: CustomTransitionViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
    }
    
}
