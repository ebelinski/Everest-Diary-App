//
//  BodyImageView.swift
//  Everest Diary
//
//  Created by Eugene Belinski on 12/9/15.
//  Copyright (c) 2015 Everest Team. All rights reserved.
//

import UIKit

class BodyImageView: UIImageView {
    
    var bodyVC: BodyViewController?

    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        if let touch = touches.first as? UITouch {
            let point: CGPoint = touch.locationInView(self)
            
            let dot = BodyDotView(frame: CGRect(x: point.x-25, y: point.y-25, width: 50, height: 50))
            self.addSubview(dot)
            
            if let bodyVC = bodyVC {
                bodyVC.createPainPoint(Float(point.x/self.frame.width), percentY: Float(point.y/self.frame.height))
            }
        }
    }

}
