//
//  IngredientsData.swift
//  whattocook
//
//  Created by Amanda Nisenbaum on 11/3/20.
//  Copyright © 2020 Amanda Nisenbaum. All rights reserved.
//

import Foundation
import RealmSwift

class IngredientsData {
    
    let realm = try? Realm()
    
    public func createJson(){
        //create realm
        let ingredientRealm = IngredientRealm()
        
        let jsonObject: [String: Any] =
            
            [
                "meat":
                    [
                        [ "name": "chicken" ],
                        [ "name": "steak" ],
                        [ "name": "fish" ]
                    ],
                "veg":
                    [
                        [ "name": "spinach" ],
                        [ "name": "carrot" ],
                        [ "name": "corn" ]
                    ]
            ]
        
        let valid = JSONSerialization.isValidJSONObject(jsonObject) // true
        if(valid){
            let decoderdec = JSONDecoder()
            let jsonData: Data?
            do {
                jsonData = try JSONSerialization.data(withJSONObject: jsonObject, options: [])
                let ingredientObjectParsed = try decoderdec.decode(IngredientJsonDecoder.self, from: jsonData!)
                
              
                ingredientRealm.saveIngredientRealm(ingredientMeatList: ingredientObjectParsed.meat, ingredientVegList: ingredientObjectParsed.veg)
                
                let ingredientsRlm = realm?.objects(IngredientRealm.self)
                for ingredients in ingredientsRlm!{
                    
                    for ingredientName in ingredients.meatList{
                        print("ingredient name: ", ingredientName)
                    }
                    for ingredientType in ingredients.vegList{
                        print("ingredient name: ", ingredientType)
                    }
                }
                
            } catch {
                
            }
            
        }else{
            print("JSON NOT valid.")
        }
    }
}
