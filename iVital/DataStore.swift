//
//  DataStore.swift
//  iVital
//
//  Created by Benson Wu on 11/25/18.
//  Copyright © 2018 Lambda Pledge Class. All rights reserved.
//

import Foundation
import UIKit

final class DataStore {
    static let sharedInstance = DataStore()
    fileprivate init() {}
    
    var vitals: [Vital] = []
    var images: [UIImage] = []
    
    func getVitals(completion: @escaping () -> Void) {
        let list = [ ["Heart Rate", "70", "Assets.xcassets/heart_rate.png"], ["Breathing Rate", "32", "Assets.xcassets/breathing_rate.png"], ["Body Temperature", "98.3", "Assets.xcassets/body_temp.png"], ["Blood Pressure", "103/72", "Assets.xcassets/blood_pressure.png"] ]
        for item in list {
            let newVital = Vital(data: item)
            self.vitals.append(newVital)
        }
        completion()
    }
    
    func getVitalImages(completion: @escaping () -> Void) {
        getVitals{
            for vital in self.vitals {
//                let url = URL(string: vital.image)
//                let image = UIImage(named: "heart_rate.png")
//                if let imageData = data {
//                let image = UIImage( data: imageData )
                self.images.append(#imageLiteral(resourceName: "heart_rate.png"))
                self.images.append(#imageLiteral(resourceName: "breathing_rate.png"))
                self.images.append(#imageLiteral(resourceName: "body_temp.png"))
                self.images.append(#imageLiteral(resourceName: "blood_pressure.png"))
                //}
            }
            OperationQueue.main.addOperation {
                completion()
            }
        }
    }
}
