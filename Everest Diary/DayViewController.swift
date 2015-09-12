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
    
    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureView()
        
        labelPainQuestion.hidden = true
        buttonPainYes.hidden = true
        buttonPainNo.hidden = true
    }
    
    func configureView() {
        if let detail: AnyObject = self.detailItem {
        }
    }
    
    @IBAction func didPressFeelingButton(sender: AnyObject) {
        labelPainQuestion.hidden = false
        buttonPainYes.hidden = false
        buttonPainNo.hidden = false
    }
    
    @IBAction func didPressPainButton(sender: AnyObject) {
        if (sender.tag == 2) {
            self.navigationController?.popToRootViewControllerAnimated(true)
        }
    }

}

