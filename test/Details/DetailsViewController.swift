//
//  DetailsViewController.swift
//  test
//
//  Created by Rostyslav Zaiets on 3/27/18.
//  Copyright © 2018 Rostyslav Zaiets. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    var getImages = UIImage()
    
    @IBOutlet weak var imgImage: UIImageView!
    @IBOutlet weak var nameOfTextField: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imgImage.image = getImages
        imgImage.layer.cornerRadius = 10.0
        imgImage.clipsToBounds = true
        
        nameOfTextField.layer.cornerRadius = 10.0
        nameOfTextField.layer.borderWidth = 2.0
        nameOfTextField.layer.borderColor = UIColor(red:217/255, green:217/255, blue:217/255, alpha: 1).cgColor
    }

}
