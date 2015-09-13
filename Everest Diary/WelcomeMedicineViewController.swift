//
//  WelcomeMedicineViewController.swift
//  Everest Diary
//
//  Created by Eugene Belinski on 12/9/15.
//  Copyright (c) 2015 Everest Team. All rights reserved.
//

import UIKit

class WelcomeMedicineViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet var pickerMedicationFrequency: UIPickerView!
    
    var medicationFrequencyData: [String] = [String]()
    
    @IBOutlet var textFieldMedication: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var tap: UITapGestureRecognizer = UITapGestureRecognizer(
            target: self, action: "resignAll")
        view.addGestureRecognizer(tap)

        medicationFrequencyData = [
            "Twice a Day",
            "Daily",
            "Weekly",
            "Other"
        ]
        
        pickerMedicationFrequency.dataSource = self
        pickerMedicationFrequency.delegate = self
    }
    
    func resignAll() {
        self.textFieldMedication.resignFirstResponder()
    }
    
    // The number of columns of data
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // The number of rows of data
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return medicationFrequencyData.count
    }
    
    // The data to return for the row and component (column) that's being passed in
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return medicationFrequencyData[row]
    }
    
}
