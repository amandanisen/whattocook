//
//  IngredientJsonDecoder.swift
//  whattocook
//
//  Created by Amanda Nisenbaum on 11/10/20.
//  Copyright © 2020 Amanda Nisenbaum. All rights reserved.
//

import Foundation


// MARK: - IngredientJSONDecoder
struct IngredientJsonDecoder: Codable {
    let meat, veg: [Food]
}

// MARK: - Meat
struct Food: Codable {
    let name: String
}
