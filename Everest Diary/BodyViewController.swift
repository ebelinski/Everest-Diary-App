//
//  BodyViewController.swift
//  Everest Diary
//
//  Created by Eugene Belinski on 12/9/15.
//  Copyright (c) 2015 Everest Team. All rights reserved.
//

import UIKit

class BodyViewController: UIViewController {

    @IBOutlet var imageBody: BodyImageView!
    var mostRecentPainPoint: BodyDotView?
    
    @IBOutlet var painSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        painSlider.hidden = true
        
        imageBody.bodyVC = self
    }

    func createPainPoint(percentX: Float, percentY: Float) {
        painSlider.hidden = false
        painSlider.value = 0.5
    }
    
    @IBAction func didChangePainSliderValue(sender: AnyObject) {
        let value = (sender as! UISlider).value
        
        if let mostRecentPainPoint = mostRecentPainPoint {
            mostRecentPainPoint.alpha = CGFloat(value)
        }
    }
    
}
