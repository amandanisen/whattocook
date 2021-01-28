//
//  IngredientRealm.swift
//  whattocook
//
//  Created by Amanda Nisenbaum on 11/10/20.
//  Copyright © 2020 Amanda Nisenbaum. All rights reserved.
//

import Foundation
import RealmSwift

class IngredientRealm: Object {
    @objc dynamic var name = ""
    @objc dynamic var type = ""
    @objc dynamic var id = ""
    
    override static func primaryKey() -> String? {
        return "id"
    }
    
    func saveIngredientRealm(_ingredient: IngredientRealm){
        let realm = try! Realm()
        let ingredientRealm = IngredientRealm()
       
        try! realm.write {
            ingredientRealm.name = _ingredient.name
            ingredientRealm.type = _ingredient.type
            realm.add(ingredientRealm, update: .all)
        }
       

    }
}
