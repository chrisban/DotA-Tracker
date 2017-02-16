//
//  MainPageViewController.swift
//  DotA Tracker
//
//  Created by Christopher Ban on 2/15/17.
//  Copyright © 2017 cban. All rights reserved.
//

import UIKit

class MainPageViewController: UIPageViewController, UIPageViewControllerDataSource{
    var arrPageTitles: NSArray = NSArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        arrPageTitles = ["Game Updates", "Esports Fluff"];
        
        self.dataSource = self
        self.setViewControllers([getViewControllerAtIndex(index: 0)] as [UIViewController],
                                direction: UIPageViewControllerNavigationDirection.forward,
                                animated: false, completion: nil)    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK:- UIPageViewControllerDataSource Methods
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController?
    {
        let pageContent: PageContentViewController = viewController as! PageContentViewController
        var index = pageContent.pageIndex
        if ((index == 0) || (index == NSNotFound))
        {
            return nil
        }
        index -= 1;
        return getViewControllerAtIndex(index: index)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController?
    {
        let pageContent: PageContentViewController = viewController as! PageContentViewController
        var index = pageContent.pageIndex
        if (index == NSNotFound)
        {
            return nil;
        }
        index += 1;
        if (index == arrPageTitles.count)
        {
            return nil;
        }
        return getViewControllerAtIndex(index: index)
    }
    
    
    func getViewControllerAtIndex(index: NSInteger) -> PageContentViewController
    {
        // Create a new view controller and pass suitable data.
        let PageContentViewController = self.storyboard?.instantiateViewController(withIdentifier: "PageContentViewController") as! PageContentViewController
        PageContentViewController.strTitle = "\(arrPageTitles[index])"
        PageContentViewController.pageIndex = index
        return PageContentViewController
    }
}
