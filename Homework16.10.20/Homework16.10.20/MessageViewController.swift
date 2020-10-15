//
//  MessageViewController.swift
//  Homework16.10.20
//
//  Created by Guraevskiy Max on 05.10.2020.
//

import UIKit

class MessageViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    var messageData: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        messageLabel.text = messageData
    }
    
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    //override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    //}
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let messageController = segue.destination as!
//        MessageViewController messageController.messageData = textToSendField.text
//    }
    

}
