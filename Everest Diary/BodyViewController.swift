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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageBody.bodyVC = self
    }

    func createPainPoint(percentX: Float, percentY: Float) {
        println("new pain point...")
    }
    
}
