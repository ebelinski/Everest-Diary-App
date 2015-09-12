//
//  DayListViewController.swift
//  Everest Diary
//
//  Created by Eugene Belinski on 12/9/15.
//  Copyright (c) 2015 Everest Team. All rights reserved.
//

import UIKit
import CoreData

class DayListViewController: UIViewController {

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Segues

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "dayListToDay" {
        }
    }
}

