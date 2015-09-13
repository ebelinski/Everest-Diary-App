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
    let dotSize: CGFloat = 30

    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        if let touch = touches.first as? UITouch {
            let point: CGPoint = touch.locationInView(self)
            
            let dot = BodyDotView(frame: CGRect(x: point.x-dotSize/2, y: point.y-dotSize/2, width: dotSize, height: dotSize))
            dot.alpha = 0
            UIView.animateWithDuration(1, animations: {
                dot.alpha = 0.5
            })
            self.addSubview(dot)
            
            if let bodyVC = bodyVC {
                bodyVC.mostRecentPainPoint = dot
                bodyVC.createPainPoint(Float(point.x/self.frame.width), percentY: Float(point.y/self.frame.height))
            }
        }
    }

}
