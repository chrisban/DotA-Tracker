//
//  GamePageContentViewController.swift
//  DotA Tracker
//
//  Created by Christopher Ban on 2/16/17.
//  Copyright © 2017 cban. All rights reserved.
//

import Foundation
import UIKit

class PageContentViewController: UIViewController {

    @IBOutlet var pageTitle: UILabel!
    @IBOutlet var pageControlDisplay: UIPageControl!
    
    var pageIndex: Int = 0
    let pageTitles: NSArray = ["DotA Updates", "Esports Updates"]
    
	override func viewDidLoad() {
		super.viewDidLoad()
        displayViewContent()
	}
    
    func displayViewContent() {
        let currentPageTitle = pageTitles[pageIndex] as! String
        pageTitle.text = currentPageTitle
        pageControlDisplay.currentPage = pageIndex
        
        switch pageIndex {
        case 1:
            break;
        case 2:
            break;
        default:
            break;
        }
    }
}
