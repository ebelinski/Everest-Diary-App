//
//  MedicationsTakenViewController.swift
//  Everest Diary
//
//  Created by HHWS on 12/9/15.
//  Copyright (c) 2015 Everest Team. All rights reserved.
//

import UIKit

class MedicationsTakenViewController: UIViewController {

    @IBOutlet var labelResponseGreat: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        labelResponseGreat.alpha = 0
    }
    
    @IBAction func didPressYesAll(sender: AnyObject) {
        
        
        UIView.animateWithDuration(0.5, animations: {
            self.labelResponseGreat.alpha = 1
        })
        
        let delayTime = dispatch_time(DISPATCH_TIME_NOW, Int64(1.5 * Double(NSEC_PER_SEC)))
        dispatch_after(delayTime, dispatch_get_main_queue()) {
            self.goToNextPage()
        }
    }
    
    func goToNextPage() {
        self.performSegueWithIdentifier("medicationsTakenToDay", sender: self)
    }
}
