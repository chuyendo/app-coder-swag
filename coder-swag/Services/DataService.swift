//
//  DataService.swift
//  coder-swag
//
//  Created by mac on 11/22/17.
//  Copyright © 2017 DoThuyHanhChuyen. All rights reserved.
//

import Foundation
class DataService {
     static let instance = DataService()
    
    private let categories = [
    Category(title: "SHIRTS", imageName: "shirts.png"),
    Category(title: "HOODIERS", imageName: "hoodies.png"),
    Category(title: "HATS", imageName: "hats.png"),
    Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    func getCategories() -> [Category] {
        return categories
    }
}
