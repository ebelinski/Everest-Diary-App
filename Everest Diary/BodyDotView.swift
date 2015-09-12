//
//  BodyDotView.swift
//  Everest Diary
//
//  Created by Eugene Belinski on 12/9/15.
//  Copyright (c) 2015 Everest Team. All rights reserved.
//

import UIKit

class BodyDotView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.clearColor()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func drawRect(rect: CGRect) {
        var context = UIGraphicsGetCurrentContext()
        let center = CGPointMake(
            self.frame.size.width / 2,
            self.frame.size.height / 2)
        var startAngle: Float = Float(2 * M_PI)
        var endAngle: Float = 0.0
        let radius = (CGFloat(self.frame.size.width) - CGFloat(1.5)) / 2
        
        var fillColor = UIColor.whiteColor().CGColor
        var pathDrawType = kCGPathFillStroke
        
        CGContextSetStrokeColorWithColor(context, UIColor.whiteColor().CGColor)
        CGContextSetLineWidth(context, CGFloat(1.5))
        CGContextSetFillColorWithColor(context, fillColor)
        CGContextAddArc(context,
            center.x,
            center.y,
            CGFloat(radius),
            CGFloat(startAngle),
            CGFloat(endAngle),
            0)
        CGContextDrawPath(context, pathDrawType)
    }

}
