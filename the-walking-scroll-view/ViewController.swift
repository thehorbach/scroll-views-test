//
//  ViewController.swift
//  the-walking-scroll-view
//
//  Created by Vyacheslav Horbach on 13/03/16.
//  Copyright © 2016 Vyacheslav Horbach. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    let WIDTH: CGFloat = 251
    let HEIGHT: CGFloat = 424
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for var x = 1; x <= 5; x++ {
            let img = UIImage(named: "\(x)")
            let imgView = UIImageView(image: img)
            
            scrollView.addSubview(imgView)
            
            imgView.frame = CGRectMake(-200 + (WIDTH * CGFloat(x)), 250, WIDTH, HEIGHT)
        }
        
        scrollView.contentSize = CGSizeMake(WIDTH * 5, scrollView.frame.size.height)
        
    }

}

