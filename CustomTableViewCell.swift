//
//  CustomTableViewCell.swift
//  CustomTableViewDemo
//
//  Created by Anton Haastrup on 16/05/2020.
//  Copyright © 2020 Anton Haastrup. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var imageViewoutlet: UIImageView!
    @IBOutlet weak var textOutlet: UILabel!
    
    
    func setImage(image: Image) {
        imageViewoutlet.image = image.image
        textOutlet.text = image.title
    }
    
}
