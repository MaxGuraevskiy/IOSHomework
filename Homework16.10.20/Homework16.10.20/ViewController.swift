//
//  ViewController.swift
//  Homework16.10.20
//
//  Created by Guraevskiy Max on 05.10.2020.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textToSendField: UITextField!
    
    @IBAction func showMe(_ sender: Any) {
        NSLog("User Wrote: %@", textToSendField.text!)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() { super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var textField: UITextField!
     
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     let messageView = segue.destination as! MessageViewController
     messageView.messageData = textField.text;
     }
}

