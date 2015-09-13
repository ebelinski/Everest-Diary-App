//
//  SymptomsMediaViewController.swift
//  Everest Diary
//
//  Created by Eugene Belinski on 12/9/15.
//  Copyright (c) 2015 Everest Team. All rights reserved.
//

import UIKit

class SymptomsMediaViewController: UIViewController {

    @IBOutlet var imageView1: UIImageView!
    @IBOutlet var imageView2: UIImageView!
    @IBOutlet var imageView3: UIImageView!
    @IBOutlet var imageView4: UIImageView!
    
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    @IBOutlet var button4: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func didPressMediaButton(sender: AnyObject) {
        let menu = UIAlertController(title: "Add Media", message: nil, preferredStyle: .ActionSheet)
        menu.addAction(UIAlertAction(title: "Take a picture", style: UIAlertActionStyle.Default, handler: {
            (action:UIAlertAction!) -> Void in
            println("clicked")
        }))
        menu.addAction(UIAlertAction(title: "Choose existing picture", style: UIAlertActionStyle.Default, handler: {
            (action:UIAlertAction!) -> Void in
            println("clicked")
        }))
        menu.addAction(UIAlertAction(title: "Create a recording", style: UIAlertActionStyle.Default, handler: {
            (action:UIAlertAction!) -> Void in
            println("clicked")
        }))
        menu.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: nil))
        self.presentViewController(menu, animated: true, completion: nil)
    }
    
    @IBAction func didPressDoneButton(sender: AnyObject) {
        self.navigationController?.popToRootViewControllerAnimated(true)
    }

}
