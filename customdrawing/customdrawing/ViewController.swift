//
//  ViewController.swift
//  customdrawing
//
//  Created by Nazlı Güler on 5.03.2021.
//  Copyright © 2021 Nazlı Güler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var AView: AView!
    

    @IBOutlet weak var Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let displayLink = CADisplayLink (target: self, selector: #selector (update))
         displayLink.add(to: RunLoop.main, forMode: RunLoop.Mode.default)
        
    }
    
    @objc func update() {
        
        print("Update")
        AView.update()
    
    }


}

