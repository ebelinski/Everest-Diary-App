//
//  WelcomeViewController.swift
//  Everest Diary
//
//  Created by Eugene Belinski on 12/9/15.
//  Copyright (c) 2015 Everest Team. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet var pickerHealthStatus: UIPickerView!
    @IBOutlet var pickerDoctorVisitFrequency: UIPickerView!
    
    var healthStatusData: [String] = [String]()
    var doctorVisitFrequencyData: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        healthStatusData = [
            "Fantastic",
            "Very Good",
            "Average",
            "Below Average",
            "Poor"
        ]
        
        doctorVisitFrequencyData = [
            "More than once a week",
            "About once a week",
            "About once a month",
            "About once ever 3-5 months",
            "About once a year",
            "Less than once a year"
        ]
        
        pickerHealthStatus.delegate = self
        pickerHealthStatus.dataSource = self
        pickerDoctorVisitFrequency.delegate = self
        pickerDoctorVisitFrequency.dataSource = self
    }
    
    @IBAction func didPressBegin(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    // The number of columns of data
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // The number of rows of data
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView.tag == 1 {
            return healthStatusData.count
        } else {
            return doctorVisitFrequencyData.count
        }
    }
    
    // The data to return for the row and component (column) that's being passed in
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView.tag == 1 {
            return healthStatusData[row]
        } else {
            return doctorVisitFrequencyData[row]
        }
    }

}
