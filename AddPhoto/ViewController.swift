//
//  ViewController.swift
//  AddPhoto
//
//  Created by Rimil Dey on 26/10/17.
//  Copyright © 2017 Rimil Dey. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    // MARK: - view did load
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - outlets
    
    @IBOutlet weak var imageView: UIImageView!
    
    // MARK: - interactions
    
    @IBAction func tapCameraButton(_ sender: UIBarButtonItem) {
        let imagepicker = UIImagePickerController()
        present(imagepicker, animated: true, completion: nil)
        imagepicker.delegate = self
    }
    
    // MARK: - UIImageControllerDelegate
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        imageView.image = info[UIImagePickerControllerOriginalImage] as? UIImage
        dismiss(animated: true, completion: nil)
    }

}

