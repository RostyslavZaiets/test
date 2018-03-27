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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imgImage.image = getImages
        
        imgImage.layer.cornerRadius = 10.0
        imgImage.clipsToBounds = true
        
    }

}
