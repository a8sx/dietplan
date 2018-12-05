//
//  DayViewController.swift
//  DietPlan
//
//  Created by Dragan Todorovic on 12/4/18.
//  Copyright © 2018 a8sx. All rights reserved.
//

import UIKit
import SwipeCellKit
import RealmSwift

class DayViewController: BaseTableViewController<Day, DayCell> {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cellIdentifier = "DayCell"
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = super.tableView(tableView, cellForRowAt: indexPath) as! DayCell
        
        guard let category = data?[indexPath.row] else {
            cell.textLabel?.text = "There is not days added!"
            return cell
        }
        
        cell.model = Day()
        
        
        return cell
    }
}
