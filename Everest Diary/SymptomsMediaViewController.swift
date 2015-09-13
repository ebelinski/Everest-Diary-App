//
//  SymptomsMediaViewController.swift
//  Everest Diary
//
//  Created by Eugene Belinski on 12/9/15.
//  Copyright (c) 2015 Everest Team. All rights reserved.
//

import UIKit

class SymptomsMediaViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    @IBOutlet var imageView1: UIImageView!
    @IBOutlet var imageView2: UIImageView!
    @IBOutlet var imageView3: UIImageView!
    @IBOutlet var imageView4: UIImageView!
    var activeImageView: UIImageView?
    
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    @IBOutlet var button4: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func didPressMediaButton(sender: AnyObject) {
        let tag = (sender as! UIButton).tag
        switch tag {
        case 1: activeImageView = imageView1
        case 2: activeImageView = imageView2
        case 3: activeImageView = imageView3
        case 4: activeImageView = imageView4
        default: activeImageView = imageView1
        }
        
        let menu = UIAlertController(title: "Add Media", message: nil, preferredStyle: .ActionSheet)
        menu.addAction(UIAlertAction(title: "Take a picture", style: UIAlertActionStyle.Default, handler: {
            (action: UIAlertAction!) -> Void in
            self.takePicture()
        }))
        menu.addAction(UIAlertAction(title: "Choose existing picture", style: UIAlertActionStyle.Default, handler: {
            (action: UIAlertAction!) -> Void in
            self.chooseExistingPicture()
        }))
        menu.addAction(UIAlertAction(title: "Create a recording", style: UIAlertActionStyle.Default, handler: {
            (action: UIAlertAction!) -> Void in
            println("recording...?")
        }))
        menu.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: nil))
        self.presentViewController(menu, animated: true, completion: nil)
    }
    
    func takePicture() {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        
        if (UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.Camera)) {
            imagePicker.sourceType = UIImagePickerControllerSourceType.Camera
            imagePicker.cameraCaptureMode = UIImagePickerControllerCameraCaptureMode.Photo
        } else {
            imagePicker.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        }
        
        self.presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    func chooseExistingPicture() {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        self.presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]) {
        var image = info[UIImagePickerControllerOriginalImage] as! UIImage
        
        var tempImage: UIImage!
        let targetSize = CGSizeMake(300, (300*(image.size.height/image.size.width)))
        UIGraphicsBeginImageContext(targetSize)
        
        var thumbnailRect = CGRectMake(0, 0, 0, 0)
        thumbnailRect.origin = CGPointMake(0, 0)
        thumbnailRect.size.width = targetSize.width
        thumbnailRect.size.height = targetSize.height
        image.drawInRect(thumbnailRect)
        tempImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        image = tempImage
        
        let imageSize = image.size
        let newDimension = min(imageSize.width, imageSize.height)
        let widthOffset = (imageSize.width - newDimension) / 2
        let heightOffset = (imageSize.height - newDimension) / 2
        UIGraphicsBeginImageContextWithOptions(CGSizeMake(newDimension, newDimension), false, 0)
        image.drawAtPoint(CGPointMake(-widthOffset, -heightOffset), blendMode: kCGBlendModeCopy, alpha: 1)
        image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        if let activeImageView = activeImageView {
            activeImageView.image = image
        }
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func didPressDoneButton(sender: AnyObject) {
        self.navigationController?.popToRootViewControllerAnimated(true)
    }

}
