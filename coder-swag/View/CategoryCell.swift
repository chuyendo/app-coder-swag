//
//  CategoryCell.swift
//  coder-swag
//
//  Created by mac on 11/22/17.
//  Copyright © 2017 DoThuyHanhChuyen. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    func updateView(category: Category)  {
        categoryImage.image = UIImage(named: category.imageName!)
        categoryTitle.text = category.title
    }


}
