//
//  CollectionViewCell.swift
//  iVital
//
//  Created by Benson Wu on 11/25/18.
//  Copyright © 2018 Lambda Pledge Class. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet var vitalImage: UIImageView!
    @IBOutlet var vitalLabel: UILabel!
    @IBOutlet var vitalButton: UIButton!
    
    func displayContent( image: UIImage, number: String, title: String ) {
        vitalImage.image = image
        vitalLabel.text = title
        vitalButton.setTitle(number, for: UIControl.State.normal)
    }
}
