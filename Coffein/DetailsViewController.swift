//
//  DetailsViewController.swift
//  Coffein
//
//  Created by Evgenii Mikhailov on 17.11.2022.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var detailsTextView: UITextView!
    @IBOutlet weak var backButton: UIButton!
    
   var detailsText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
     detailsTextView.text = detailsText
    }
    
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}
