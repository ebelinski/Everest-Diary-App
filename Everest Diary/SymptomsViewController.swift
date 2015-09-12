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
    }
    
    func keyboardWasShown(aNotification: NSNotification) {
        let info : NSDictionary = aNotification.userInfo!
        let kbSize = info.objectForKey(UIKeyboardFrameBeginUserInfoKey)?
            .CGRectValue().size
        let height = kbSize!.height
    }
    
    func keyboardWillBeHidden(aNotification: NSNotification) {
        
    }
    
    func resignAll() {
        self.textFieldSymptom1.resignFirstResponder()
    }

    @IBAction func symptomEditingDidBegin(sender: AnyObject) {
        
    }
    
    @IBAction func symptomEditingDidEnd(sender: AnyObject) {
        
    }
}
