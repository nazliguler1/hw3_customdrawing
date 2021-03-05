//
//  AView.swift
//  customdrawing
//
//  Created by Nazlı Güler on 6.03.2021.
//  Copyright © 2021 Nazlı Güler. All rights reserved.
//

import Foundation
import UIKit

class AView: UIView {
    
    var ax = 0
    var ay = 0
    
    override func draw(_ rect: CGRect) {
        
        let color:UIColor = UIColor.systemPink
        let drawrect = CGRect(x: ax, y: ay, width:30, height:30)
        let bpath:UIBezierPath = UIBezierPath(rect: drawrect)
        
        color.set()
        bpath.stroke()
        UIColor.white.set()
        UIRectFill(drawrect)
        NSLog("Function called")
    }

    
    @objc func update() {
        print("Update")
        ax = ax - 8
        ay = ay - 8
        setNeedsDisplay()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for i in touches
        {
            let point = i.location(in: self)
            ax = Int(point.x)
            ay = Int(point.y)
           
        }
    }
    
}
