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
    //    var ingredientList = List<IngredientRealm>()
    var vegList = List<VegIngredientRealm>()
    var meatList = List<MeatIngredientRealm>()
    
    var typeList = List<String>()
    
    //    @objc dynamic var name = ""
    //    @objc dynamic var type = ""
    @objc dynamic var id = ""
    
    override static func primaryKey() -> String? {
        return "id"
    }
    
    func saveIngredientRealm(ingredientMeatList: [Food], ingredientVegList: [Food]){
        let realm = try! Realm()
        let ingredientRealm = IngredientRealm()
        //meat list
        //        let meatIngredientList = List<MeatIngredientRealm>()
        //veg list
        //        let vegIngredientList = List<VegIngredientRealm>()
        try! realm.write {
            for meat in ingredientMeatList{
                //                if(type == "meat"){
                let meatIngredientDB = MeatIngredientRealm()
                meatIngredientDB.name = meat.name
                meatIngredientDB.type = "meat"
                ingredientRealm.meatList.append(meatIngredientDB)
            }
            for veg in ingredientVegList{
                let vegIngredientDB = VegIngredientRealm()
                vegIngredientDB.name = veg.name
                vegIngredientDB.type = "veg"
                ingredientRealm.vegList.append(vegIngredientDB)
                //
            }
            realm.add(ingredientRealm, update: .all)

        }
        
    }
    //        try! realm.write {
    //            ingredientRealm.meatList.append(meatIngredientList)
    //            ingredientRealm.vegList.append(vegIngredientDB)
    //            realm.add(ingredientRealm, update: .all)
    //        }
}

//    private func saveMeatToRlm(listDB: List<Meat>, type: String, ingr: String){
//
//    }

class VegIngredientRealm: Object {
    @objc dynamic var name = ""
    @objc dynamic var type = ""
    
}

class MeatIngredientRealm: Object {
    @objc dynamic var name = ""
    @objc dynamic var type = ""
    
}
