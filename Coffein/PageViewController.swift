//
//  PageViewController.swift
//  Coffein
//
//  Created by Evgenii Mikhailov on 16.11.2022.
//

import UIKit



class PageViewController: UIPageViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource = self
        if let contentViewController = showViewControllerAtIndex(0) { 
            setViewControllers([contentViewController], direction: .forward, animated: true)
        }
    }
    
    func showViewControllerAtIndex ( _ index: Int) -> ContentViewController? {
        guard index >= 0 else { return nil }
        guard index < coffeData.count else { return nil }
        guard let contentViewController = storyboard?.instantiateViewController(withIdentifier: "ContentViewController") as? ContentViewController else { return nil }
        
        contentViewController.previewText = coffeData[index][0]
        contentViewController.image = UIImage(named: coffeData[index][1])!
        contentViewController.currentPage = index
        contentViewController.numberOfPages = coffeData.count
        return contentViewController
    }
}


extension PageViewController: UIPageViewControllerDataSource {
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        var pageNumber = (viewController as! ContentViewController).currentPage
        pageNumber -= 1
        return showViewControllerAtIndex(pageNumber)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        var pageNumber = (viewController as! ContentViewController).currentPage
        pageNumber += 1
        return showViewControllerAtIndex(pageNumber)
    }
}
