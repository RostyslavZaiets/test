//
//  SegmentViewController.swift
//  test
//
//  Created by Rostyslav Zaiets on 3/27/18.
//  Copyright © 2018 Rostyslav Zaiets. All rights reserved.
//

import UIKit

class SegmentViewController: UIViewController {

    @IBOutlet weak var containerViewA: UIView!
    @IBOutlet weak var containerViewB: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    @IBAction func showComponent(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            UIView.animate(withDuration: 0.1, animations: {
                self.containerViewA.alpha = 1
                self.containerViewB.alpha = 0
            })
        } else {
            UIView.animate(withDuration: 0.1, animations: {
                self.containerViewA.alpha = 0
                self.containerViewB.alpha = 1
            })
        }
    }
}
    
