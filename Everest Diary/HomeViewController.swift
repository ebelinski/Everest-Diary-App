//
//  HomeViewController.swift
//  Everest Diary
//
//  Created by Eugene Belinski on 12/9/15.
//  Copyright (c) 2015 Everest Team. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet var logoImage: UIImageView!
    
    @IBOutlet var logHistoryButton: UIButton!
    
    let balloonDimensions: CGSize = CGSize(width: 93, height: 121)
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(red: 0.361, green: 0.49, blue: 0.612, alpha: 1) /* #5c7d9c */
        
        self.performSegueWithIdentifier("homeToWelcome", sender: self)
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        if NSUserDefaults.standardUserDefaults().boolForKey("didJustUnwind") {
//        if true {
            NSUserDefaults.standardUserDefaults().setBool(false, forKey: "didJustUnwind")
            
            let balloon1 = UIImageView(image: UIImage(named: "balloon1"))
            let balloon2 = UIImageView(image: UIImage(named: "balloon2"))
            let balloon3 = UIImageView(image: UIImage(named: "balloon3"))
            let balloon4 = UIImageView(image: UIImage(named: "balloon4"))
            let balloon5 = UIImageView(image: UIImage(named: "balloon4"))
            let balloon6 = UIImageView(image: UIImage(named: "balloon3"))
            let balloon7 = UIImageView(image: UIImage(named: "balloon2"))
            let balloon8 = UIImageView(image: UIImage(named: "balloon1"))
            
            balloon1.frame = CGRect(
                x: self.view.frame.width * 0.2 - balloonDimensions.width/2,
                y: self.view.frame.height * 1.1,
                width: balloonDimensions.width,
                height: balloonDimensions.height)
            balloon2.frame = CGRect(
                x: self.view.frame.width * 0.4 - balloonDimensions.width/2,
                y: self.view.frame.height * 1.3,
                width: balloonDimensions.width,
                height: balloonDimensions.height)
            balloon3.frame = CGRect(
                x: self.view.frame.width * 0.6 - balloonDimensions.width/2,
                y: self.view.frame.height * 1.1,
                width: balloonDimensions.width,
                height: balloonDimensions.height)
            balloon4.frame = CGRect(
                x: self.view.frame.width * 0.8 - balloonDimensions.width/2,
                y: self.view.frame.height * 1.3,
                width: balloonDimensions.width,
                height: balloonDimensions.height)
            balloon5.frame = CGRect(
                x: self.view.frame.width * 0.2 - balloonDimensions.width/2,
                y: self.view.frame.height * 1.1 + balloonDimensions.height*2,
                width: balloonDimensions.width,
                height: balloonDimensions.height)
            balloon6.frame = CGRect(
                x: self.view.frame.width * 0.4 - balloonDimensions.width/2,
                y: self.view.frame.height * 1.3 + balloonDimensions.height*2,
                width: balloonDimensions.width,
                height: balloonDimensions.height)
            balloon7.frame = CGRect(
                x: self.view.frame.width * 0.6 - balloonDimensions.width/2,
                y: self.view.frame.height * 1.1 + balloonDimensions.height*2,
                width: balloonDimensions.width,
                height: balloonDimensions.height)
            balloon8.frame = CGRect(
                x: self.view.frame.width * 0.8 - balloonDimensions.width/2,
                y: self.view.frame.height * 1.3 + balloonDimensions.height*2,
                width: balloonDimensions.width,
                height: balloonDimensions.height)
            
            self.view.addSubview(balloon1)
            self.view.addSubview(balloon2)
            self.view.addSubview(balloon3)
            self.view.addSubview(balloon4)
            self.view.addSubview(balloon5)
            self.view.addSubview(balloon6)
            self.view.addSubview(balloon7)
            self.view.addSubview(balloon8)
            
            UIView.animateWithDuration(3, animations: {
                balloon1.center.y = balloon1.center.y - 1400
                balloon2.center.y = balloon2.center.y - 1400
                balloon3.center.y = balloon3.center.y - 1400
                balloon4.center.y = balloon4.center.y - 1400
                balloon5.center.y = balloon5.center.y - 1400
                balloon6.center.y = balloon6.center.y - 1400
                balloon7.center.y = balloon7.center.y - 1400
                balloon8.center.y = balloon8.center.y - 1400
            })
        }
    }

    // MARK: - Segues

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "dayListToDay" {
        }
    }
}

