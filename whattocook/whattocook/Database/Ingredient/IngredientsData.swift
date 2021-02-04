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
        let jsonObject: [String: Any] =
            
            [
                "meat":
                    [
                        [ "name": "chicken" ],
                        [ "name": "steak" ],
                        [ "name": "fish" ]
                    ],
                "veg":      [
                    [ "name": "spinach" ],
                    [ "name": "carrot" ],
                    [ "name": "corn" ]
                ]
            ]
        //                    "chicken": [
        //                        "type": "meat",
        //                    ],
        //                    "steak": [
        //                        "type": "meat",
        //                    ],
        //                    "broccoli": [
        //                        "type": "veg",
        //                    ],
        //                    "carrots": [
        //                        "type": "veg",
        //                    ],
        //                    "ketchup": [
        //                        "type": "cond",
        //                    ],
        //                    "rice": [
        //                        "type": "grain",
        //                    ],
        //                    "honey": [
        //                        "type": "cond",
        //                    ],
        //                    "olive oil": [
        //                        "type": "cond",
        //                    ]
        
        
        
        let valid = JSONSerialization.isValidJSONObject(jsonObject) // true
        if(valid){
            //            print("Valid JSON: ", jsonObject)
            
            let decoderdec = JSONDecoder()
            //            decoderdec.keyDecodingStrategy = .convertFromSnakeCase
            let jsonData: Data?
            do {
                jsonData = try JSONSerialization.data(withJSONObject: jsonObject, options: [])
                let ingredientObjectParsed = try decoderdec.decode(IngredientJsonDecoder.self, from: jsonData!)
                //                let ingredientObjectParsed = try JSONDecoder().decode(IngredientJsonDecoder.self, from: data!)
                print("Ingredients parsed:", ingredientObjectParsed)
                for ingredients in ingredientObjectParsed.meat{
                    print("Meats:", ingredients.name)
                }
            } catch {
                
            }
            
        }else{
            print("JSON NOT valid.")
        }
    }
}
