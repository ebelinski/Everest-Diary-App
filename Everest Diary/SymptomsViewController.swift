//
//  SymptomsViewController.swift
//  Everest Diary
//
//  Created by Eugene Belinski on 12/9/15.
//  Copyright (c) 2015 Everest Team. All rights reserved.
//

import UIKit

class SymptomsViewController: UIViewController {

    @IBOutlet var textFieldSymptom1: UITextField!
    var symptomsPicker: UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var tap: UITapGestureRecognizer = UITapGestureRecognizer(
            target: self, action: "resignAll")
        view.addGestureRecognizer(tap)
        
        NSNotificationCenter.defaultCenter().addObserver(self,
            selector: Selector("keyboardWasShown:"),
            name: UIKeyboardWillShowNotification,
            object: nil)
        
        NSNotificationCenter.defaultCenter().addObserver(self,
            selector: Selector("keyboardWillBeHidden:"),
            name: UIKeyboardWillHideNotification,
            object: nil)
        
        let symptomsPickerVC = SymptomsTableViewController()
        symptomsPicker = symptomsPickerVC.tableView
        symptomsPicker?.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: 44*3)
        symptomsPicker?.hidden = true
        symptomsPicker?.alpha = 0
        self.view.addSubview(symptomsPicker!)
    }
    
    func keyboardWasShown(aNotification: NSNotification) {
        let info : NSDictionary = aNotification.userInfo!
        let kbSize = info.objectForKey(UIKeyboardFrameBeginUserInfoKey)?
            .CGRectValue().size
        let keyboardHeight = kbSize!.height
        symptomsPicker?.frame = CGRect(
            x: 0,
            y: self.view.frame.height - keyboardHeight - 44*3,
            width: self.view.frame.width,
            height: 44*3)
        
        if let symptomsPicker = symptomsPicker {
            symptomsPicker.hidden = false
            UIView.animateWithDuration(1, animations: {
                symptomsPicker.alpha = 1
            })
        }
    }
    
    func keyboardWillBeHidden(aNotification: NSNotification) {
        symptomsPicker?.hidden = true
        symptomsPicker?.alpha = 0
    }
    
    func resignAll() {
        self.textFieldSymptom1.resignFirstResponder()
    }

    @IBAction func symptomEditingDidBegin(sender: AnyObject) {
        
    }
    
    @IBAction func symptomEditingDidEnd(sender: AnyObject) {
        
    }
}
