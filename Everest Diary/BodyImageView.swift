//
//  BodyImageView.swift
//  Everest Diary
//
//  Created by HHWS on 12/9/15.
//  Copyright (c) 2015 Everest Team. All rights reserved.
//

import UIKit

class BodyImageView: UIImageView {

    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        if let touch = touches.first as? UITouch {
            let point: CGPoint = touch.locationInView(self)
            NSLog("%lf %lf", point.x, point.y)
        }
    }

}
