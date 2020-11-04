//
//  IngredientsData.swift
//  whattocook
//
//  Created by Amanda Nisenbaum on 11/3/20.
//  Copyright © 2020 Amanda Nisenbaum. All rights reserved.
//

import Foundation

class IngredientsData {
    
    public func createJson(){
        let jsonObject: [String: Any] = [
            "chicken": [
                "type": "meat",
            ],
            "steak": [
                "type": "meat",
            ],
            "broccoli": [
                "type": "veg",
            ],
            "carrots": [
                "type": "veg",
            ],
            "ketchup": [
                "type": "cond",
            ],
            "rice": [
                "type": "grain",
            ],
            "honey": [
                "type": "cond",
            ],
            "olive oil": [
                "type": "cond",
            ]
        ]

        let valid = JSONSerialization.isValidJSONObject(jsonObject) // true

        print("Valid JSON: ", jsonObject)
    }
}
