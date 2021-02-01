//
//  ViewController.swift
//  The Demo App
//
//  Created by Guraevskiy Max on 01.02.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    var blurEffectView: UIVisualEffectView?
    
    let imageSet = ["frogIMG",
                    "mikeWazovskiIMG",
                    "scipperIMG",
                    "shrekIMG",
                    "spongebobIMG",
                    "chungus"]

    override func viewDidLoad() {
    super.viewDidLoad()
    let selectedImageIndex = Int(arc4random_uniform(6))
    backgroundImageView.image = UIImage(named: imageSet[selectedImageIndex])
        
    let blurEffect = UIBlurEffect(style: UIBlurEffect.Style.light)
        
    let blurEffectView = UIVisualEffectView(effect: blurEffect)
    blurEffectView.frame = view.bounds
        
        
    backgroundImageView.addSubview(blurEffectView)
        
    }

    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
            blurEffectView?.frame = view.bounds
        }
    
    

}

