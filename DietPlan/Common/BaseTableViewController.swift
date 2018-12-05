//
//  BaseTableViewController.swift
//  DietPlan
//
//  Created by Dragan Todorovic on 12/4/18.
//  Copyright © 2018 a8sx. All rights reserved.
//

import Foundation
import RealmSwift
import SwipeCellKit

class BaseTableViewController<T: Object, U: SwipeTableViewCell>: UITableViewController, SwipeTableViewCellDelegate {
    var data: Results<T>?
    var cellIdentifier: String = ""
    
    let realm = try! Realm()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data?.count ?? 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! U
        cell.delegate = self
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> [SwipeAction]? {
        guard orientation == .right else { return nil }
        
        let deleteAction = SwipeAction(style: .destructive, title: "Delete") { (action, indexPath) in
            guard let item = self.data?[indexPath.row]  else { return }
            
            self.deleteItem(item: item)
        }
        
        deleteAction.image = UIImage(named: "delete")
        return [deleteAction]
        
    }
    
    func deleteItem (item: T) {
        do {
            try realm.write {
                realm.delete(item)
            }
        } catch {
            print("Error while deleting item:", error.localizedDescription)
        }
        //Method [editActionsOptionsForItemAt] will remove tableViewCell so reloadData is not needed.
        //tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, editActionsOptionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> SwipeOptions {
        var options = SwipeOptions()
        options.expansionStyle = .destructive
        return options
    }
}
