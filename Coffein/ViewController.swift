//
//  ViewController.swift
//  Coffein
//
//  Created by Evgenii Mikhailov on 16.11.2022.
//

import UIKit

let sb = UIStoryboard(name: "Main", bundle: nil)
let detailsVC = sb.instantiateViewController(withIdentifier: "DetailsViewController") as! DetailsViewController

class ViewController: UIViewController {
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        startViews()
    }
    
    func startViews() {
        if let pageViewController = storyboard?.instantiateViewController(withIdentifier: "PageViewController") as? PageViewController {
            present(pageViewController, animated: true)
        }
    }
}

