//
//  TableViewCell.swift
//  test
//
//  Created by Rostyslav Zaiets on 3/27/18.
//  Copyright © 2018 Rostyslav Zaiets. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var tableImages: UIImageView!
    @IBOutlet weak var tableLblNews: UILabel!
    @IBOutlet weak var tableLblDescriptions: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
