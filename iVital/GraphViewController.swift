//
//  GraphViewController.swift
//  iVital
//
//  Created by Benson Wu on 11/25/18.
//  Copyright © 2018 Lambda Pledge Class. All rights reserved.
//

import UIKit

class GraphViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var graphImage: UIImageView!
    @IBOutlet weak var dateSwitcher: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let image: UIImage
        image = #imageLiteral(resourceName: "heartrate.png")
        graphImage.image = image
        
    }
    
    @IBAction func leavePopup(_ sender: UIButton) {
        dismiss(animated: true)
    }
    

}
