//
//  DayViewController.swift
//  Everest Diary
//
//  Created by Eugene Belinski on 12/9/15.
//  Copyright (c) 2015 Everest Team. All rights reserved.
//

import UIKit

class DayViewController: UIViewController {

    @IBOutlet var labelFeelingQuestion: UILabel!
    
    @IBOutlet var buttonFeelingGood: UIButton!
    @IBOutlet var buttonFeelingOkay: UIButton!
    @IBOutlet var buttonFeelingBad: UIButton!
    
    @IBOutlet var labelPainQuestion: UILabel!
    
    @IBOutlet var buttonPainYes: UIButton!
    @IBOutlet var buttonPainNo: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelPainQuestion.hidden = true
        buttonPainYes.hidden = true
        buttonPainNo.hidden = true
        labelPainQuestion.alpha = 0
        buttonPainYes.alpha = 0
        buttonPainNo.alpha = 0
    }
    
    @IBAction func didPressFeelingButton(sender: AnyObject) {
        labelPainQuestion.hidden = false
        buttonPainYes.hidden = false
        buttonPainNo.hidden = false
        
        UIView.animateWithDuration(1, animations: {
            self.labelPainQuestion.alpha = 1
            self.buttonPainYes.alpha = 1
            self.buttonPainNo.alpha = 1
        })
    }
    
    @IBAction func didPressPainButton(sender: AnyObject) {
        if (sender.tag == 2) {
            self.navigationController?.popToRootViewControllerAnimated(true)
        }
    }

}

