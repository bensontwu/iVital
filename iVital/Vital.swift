//
//  Vital.swift
//  iVital
//
//  Created by Benson Wu on 11/25/18.
//  Copyright © 2018 Lambda Pledge Class. All rights reserved.
//

struct Vital {
    let name: String
    let number: String
    let image: String
    
    init( data: [String] ) {
        self.name = data[0]
        self.number = data[1]
        self.image = data[2]
    }
}
