//
//  ViewController.swift
//  WhatsThat
//
//  Created by Martin Davy on 9/21/18.
//  Copyright © 2018 Martin Davy. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var classifier: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func camera(_ sender:Any) {
        
        if (!UIImagePickerController.isSourceTypeAvailable(.camera)) {
            return
        }
        
        let cameraPicker = UIImagePickerController()
        cameraPicker.delegate = self as? UIImagePickerControllerDelegate & UINavigationControllerDelegate
        cameraPicker.sourceType = .camera
        cameraPicker.allowsEditing = false
        
        present(cameraPicker, animated: true)
    }
    
    @IBAction func openLibrary(_ sender: Any) {
        
        let picker = UIImagePickerController()
        picker.allowsEditing = false
        picker.delegate = self as? UIImagePickerControllerDelegate & UINavigationControllerDelegate
        picker.sourceType = .photoLibrary
        present(picker, animated: true)
    }


}

