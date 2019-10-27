//
//  ViewController.swift
//  coder-swag
//
//  Created by mac on 11/21/17.
//  Copyright © 2017 DoThuyHanhChuyen. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var catelogyTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        catelogyTable.dataSource = self
        catelogyTable.delegate = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.updateView(category: category)
            return cell
        } else {
            return CategoryCell()
        }
    }

}

