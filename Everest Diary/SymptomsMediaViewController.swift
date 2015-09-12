//
//  SymptomsMediaViewController.swift
//  Everest Diary
//
//  Created by Eugene Belinski on 12/9/15.
//  Copyright (c) 2015 Everest Team. All rights reserved.
//

import UIKit

class SymptomsMediaViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func didPressDoneButton(sender: AnyObject) {
        self.navigationController?.popToRootViewControllerAnimated(true)
    }

}
