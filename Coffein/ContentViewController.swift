//
//  ContentViewController.swift
//  Coffein
//
//  Created by Evgenii Mikhailov on 16.11.2022.
//

import UIKit

class ContentViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var showButton: UIButton!
    
    var previewText = ""
    var image: UIImage = UIImage(named: "cappucino")!
    var currentPage = 0 // Page number
    var numberOfPages = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.text = previewText
        imageView.image = image
        pageControl.numberOfPages = numberOfPages
        pageControl.currentPage = currentPage
    }

    @IBAction func showButtonPrs(_ sender: Any) {
        guard let detailsViewController = storyboard?.instantiateViewController(withIdentifier: "DetailsViewController") as? DetailsViewController else { return }
        detailsViewController.detailsText = coffeData[currentPage][2]
        self.present(detailsViewController, animated: true)
    }
}
