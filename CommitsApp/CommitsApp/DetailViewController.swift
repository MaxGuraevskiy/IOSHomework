//
//  DetailViewController.swift
//  CommitsApp
//
//  Created by Guraevskiy Max on 29.11.2020.
//

import UIKit

class DetailViewController: UIViewController {
    
    var detailItem: Commit?

    override func viewDidLoad() {
        super.viewDidLoad()
        if let detail = self.detailItem {
            detailLabel.text = detail.message
            // navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Commit1/\(detail.author.commits.count)", style: .plain, target: self, action:#selector(showAuthorCommits))
    } }
    
    @IBOutlet weak var detailLabel: UILabel!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
