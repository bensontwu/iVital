//
//  PollectionViewCell.swift
//  iVital
//
//  Created by Benson Wu on 11/25/18.
//  Copyright © 2018 Lambda Pledge Class. All rights reserved.
//

import UIKit

class PollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var cellLabel: UILabel!
    
    func displayContent( text: String ) {
        cellLabel.text = text
    }
}
