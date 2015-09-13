//
//  SymptomsViewController.swift
//  Everest Diary
//
//  Created by Eugene Belinski on 12/9/15.
//  Copyright (c) 2015 Everest Team. All rights reserved.
//

import UIKit

class SymptomsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var symptoms: [String] = [String]()
    var filteredSymptoms: [String] = [String]()

    @IBOutlet var textFieldSymptom1: UITextField!
    @IBOutlet var textFieldSymptom2: UITextField!
    @IBOutlet var textFieldSymptom3: UITextField!
    
    var activeTextField: UITextField?
    var symptomsPicker: UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TODO: Make this, like, not hardcoded
        symptoms = [
            "Abdominal pain",
            "Acid feeling",
            "Acid reflux ",
            "Ache",
            "Acne - excessive",
            "Alcohol withdrawal",
            "Allergy",
            "Ankle Pain",
            "Anxiety",
            "Appetite - increased",
            "Appetite - loss",
            "Arm Pain",
            "Asthma",
            "Backache",
            "Bad breath",
            "Bad taste in mouth",
            "Behavior abnormality",
            "Bladder control issues",
            "Bladder pain",
            "Blister",
            "Bloating",
            "Blood in semen",
            "Blood in urine",
            "Blood in stool",
            "Blood in sputum (cough mucus) ",
            "Bloody nose",
            "Blurry vision",
            "Breast discharge (not nipple)",
            "Breast pain",
            "Bruising",
            "Bowel control issues",
            "Bumps on skin",
            "Bumps - other",
            "Burning",
            "Burning urination",
            "Cant exercise",
            "Chest pain",
            "Chills",
            "Cloudy urine",
            "Cold",
            "Cold fingers ",
            "Cold feet",
            "Cold hands",
            "Cold sore",
            "Confusion",
            "Congested - throat",
            "Congested - nose",
            "Constipation",
            "Cough",
            "Cracking joints",
            "Cramps",
            "Dark circles under eye",
            "Dark urine",
            "Decreased appetite",
            "Dehydration",
            "Delusions",
            "Depression",
            "Difficulty breathing",
            "Difficulty concentrating",
            "Difficulty urinating",
            "Difficulty speaking",
            "Difficulty sleeping",
            "Difficulty waking up",
            "Difficulty walking",
            "Discharge - eye",
            "Discharge - penile",
            "Discharge - nose",
            "Discharge - urinary",
            "Distracted",
            "Dizzy",
            "Double vision",
            "Drooling",
            "Dry eye",
            "Dry mouth",
            "Dry skin",
            "Earache",
            "Elbow pain",
            "Euphoria",
            "Energy - low levels",
            "Energy - high levels",
            "Eye discoloration",
            "Eye pain",
            "Eye puffing",
            "Eye swelling",
            "Eye twitch",
            "Fainting",
            "Farting - excessive",
            "Fatigue",
            "Fever",
            "Flaky scalp",
            "Flu",
            "Fluctuations - mood",
            "Foot pain",
            "Frequent urination",
            "Gas",
            "Gout (uric acid build-up)",
            "Gum soreness",
            "Gum pain",
            "Gum bleeding",
            "Hair growth ( excessive)",
            "Hair loss",
            "Hairy tongue",
            "Hand pain",
            "Headache",
            "Heart rate feels fast",
            "Heart rate feels slow",
            "Heart pain",
            "Hearing loss",
            "Heartburn",
            "Heel pain",
            "Hip pain",
            "Hoarseness",
            "Hot body/Hyperthermia",
            "Hyperactive",
            "Hyperventilating",
            "Impotence",
            "Impulsiveness",
            "Inattentive",
            "Increased appetite",
            "Infertility",
            "Insomnia",
            "Inverted nipple",
            "Irritable Bowel",
            "Itch",
            "Jaw pain",
            "Joint pain",
            "Joint popping",
            "Joint stiffness",
            "Kidney pain",
            "Kidney stone",
            "Knee pain",
            "Lazy eye",
            "Leg pain",
            "Leg soreness",
            "Libido - lower ",
            "Libido - higher",
            "Lifting arm difficulty",
            "Lifting leg difficulty",
            "Limb pain",
            "Limping",
            "Lip pain",
            "Lip swelling",
            "Lymph node - swollen",
            "Medication - missed dose",
            "Medication - excess",
            "Memory loss",
            "Menopausal symptoms",
            "Menstrual cramps",
            "Menstruation - excessive bleeding",
            "Menstruation - late",
            "Metal taste in mouth",
            "Migraine (one sided) ",
            "Missed period",
            "Mood swings",
            "Morning sickness",
            "Muscle cramp",
            "Muscle pain",
            "Muscle spasm",
            "Mute",
            "Nail clubbing",
            "Nail discoloration",
            "Nausea",
            "Neck pain",
            "Nipple discharge",
            "Nipple inversion",
            "Nipple",
            "Numbness - fingers",
            "Numbness - foot",
            "Numbness - toes",
            "Numbness - general/ other",
            "Overactive bladder",
            "Overactive bowel",
            "Other",
            "Overdose - Medication",
            "Passed out",
            "Pain after exercise",
            "Pain during intercourse",
            "Palpitations",
            "Panic attack",
            "Paralysis",
            "Paranoid",
            "Peeling skin",
            "Penis itching",
            "Penis bumps",
            "Penis pain",
            "Pink eye",
            "Post nasal drip",
            "Pregnancy",
            "Pressure",
            "Racing thoughts",
            "Rash",
            "Rash  - with bleeding",
            "Rectal bleeding",
            "Red spots - skin",
            "Red streaks - skin",
            "Restless legs",
            "Ringing - ears",
            "Runny nose",
            "Seizure",
            "Shakiness - hands ",
            "Shakiness - other",
            "Shortness of breath",
            "Sinus pain",
            "Sinus infection",
            "Sneezing",
            "Snoring",
            "Sore body",
            "Sore throat",
            "Spasm",
            "Stiffness",
            "Stomach cramp",
            "Stool color change",
            "Stool texture change",
            "Stool frequency change",
            "Sputum - clear",
            "Sputum - yellow",
            "Sputum - other ",
            "Suicidal ideation",
            "Sunburn",
            "Sweat - excessive",
            "Testicle swelling",
            "Testicle pain",
            "Thirsty",
            "Throat pain",
            "Tickling sensation",
            "Tingling - hands",
            "Tingling - feet",
            "Tingling - other",
            "Toe pain",
            "Tongue discoloration",
            "Tongue pain",
            "Tongue taste difference",
            "Tongue - swollen",
            "Tremors",
            "Tunnel vision",
            "Unusual behavior",
            "Urine - discharge",
            "Urine - discoloration",
            "Urine - spasm",
            "Urine - urgency",
            "Urine - retention",
            "Urine - odor",
            "Vaginal bleeding",
            "Vaginal bumps",
            "Vaginal discharge",
            "Vaginal dryness",
            "Vaginal discoloration",
            "Vaginal odor",
            "Vertigo",
            "Vision loss",
            "Vocal outbursts",
            "Voices in head",
            "Vomit",
            "Vomit blood",
            "Watery eyes",
            "Weakness",
            "Weight gain",
            "Weight loss",
            "Wheezing",
            "Wrist pain",
            "Yawning - excessive",
            "Yellow skin tint",
            "Yellow eyes",
            "Yellow fingers",
            "Zero energy",
            "Zombie-like feeling"
        ]
        
        var tap: UITapGestureRecognizer = UITapGestureRecognizer(
            target: self, action: "resignAll")
//        view.addGestureRecognizer(tap)
        
        NSNotificationCenter.defaultCenter().addObserver(self,
            selector: Selector("keyboardWasShown:"),
            name: UIKeyboardWillShowNotification,
            object: nil)
        
        NSNotificationCenter.defaultCenter().addObserver(self,
            selector: Selector("keyboardWillBeHidden:"),
            name: UIKeyboardWillHideNotification,
            object: nil)
        
        filteredSymptoms = symptoms
        
        symptomsPicker = UITableView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 44*5
            ))
        symptomsPicker?.registerClass(UITableViewCell.classForCoder(), forCellReuseIdentifier: "normalcell")
        symptomsPicker?.delegate = self
        symptomsPicker?.allowsSelection = true
        symptomsPicker?.dataSource = self
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
            y: self.view.frame.height - keyboardHeight - 44*5,
            width: self.view.frame.width,
            height: 44*5)
        
        if let symptomsPicker = symptomsPicker {
            symptomsPicker.reloadData()
            symptomsPicker.hidden = false
            UIView.animateWithDuration(0.5, animations: {
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
        self.textFieldSymptom2.resignFirstResponder()
        self.textFieldSymptom3.resignFirstResponder()
    }

    @IBAction func symptomEditingDidBegin(sender: AnyObject) {
        activeTextField = (sender as! UITextField)
    }
    
    @IBAction func symptomEditingChanged(sender: AnyObject) {
        let search = (sender as! UITextField).text.lowercaseString
        
        if search.isEmpty {
            filteredSymptoms = symptoms
        } else {
            filteredSymptoms = [String]()
            
            for symptom in symptoms {
                if symptom.lowercaseString.rangeOfString(search) != nil {
                    filteredSymptoms.append(symptom)
                }
            }
        }
        
        symptomsPicker?.reloadData()
    }
    
    @IBAction func symptomEditingDidEnd(sender: AnyObject) {
        filteredSymptoms = symptoms
        symptomsPicker?.reloadData()
    }
    
    // MARK: - Table view data source
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredSymptoms.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("normalcell", forIndexPath: indexPath) as! UITableViewCell
        
        cell.textLabel!.text = filteredSymptoms[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let selectionText = filteredSymptoms[indexPath.row]
        
        if let activeTextField = activeTextField {
            activeTextField.text = selectionText
        }
        
        resignAll()
    }
}
