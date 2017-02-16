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

    var pageIndex: Int = 0
	var strTitle: String!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		pageTitle.text = strTitle
	}
}
