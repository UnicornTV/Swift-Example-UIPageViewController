//
//  ViewController.swift
//  Swift Pages
//
//  Created by Clayton McIlrath on 6/19/14.
//  Copyright (c) 2014 Unicorn Ltd. All rights reserved.
//

import UIKit

class PageContentViewController: UIViewController {
    
    @IBOutlet var backgroundImageView : UIImageView
    @IBOutlet var titleLabel : UILabel
    
    var pageIndex : Int = 0
    var titleText : String = ""
    var imageFile : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.backgroundImageView.image = UIImage(named: self.imageFile)
        self.titleLabel.text = self.titleText
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

