//
//  SymptomsDescribeViewController.swift
//  Everest Diary
//
//  Created by Eugene Belinski on 12/9/15.
//  Copyright (c) 2015 Everest Team. All rights reserved.
//

import UIKit

class SymptomsDescribeViewController: UIViewController {

    @IBOutlet var labelSymptom1: UILabel!
    @IBOutlet var labelSymptom2: UILabel!
    @IBOutlet var labelSymptom3: UILabel!
    
    var symptom1: String!
    var symptom2: String!
    var symptom3: String!
    
    @IBOutlet var textAreaSymptoms1: UITextView!
    @IBOutlet var textAreaSymptoms2: UITextView!
    @IBOutlet var textAreaSymptoms3: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var tap: UITapGestureRecognizer = UITapGestureRecognizer(
            target: self, action: "resignAll")
        view.addGestureRecognizer(tap)
        
        labelSymptom1.text = symptom1
        labelSymptom2.text = symptom2
        labelSymptom3.text = symptom3
    }

    func resignAll() {
        self.textAreaSymptoms1.resignFirstResponder()
        self.textAreaSymptoms2.resignFirstResponder()
        self.textAreaSymptoms3.resignFirstResponder()
    }
    
}
