//
//  DayCell.swift
//  DietPlan
//
//  Created by Dragan Todorovic on 12/4/18.
//  Copyright © 2018 a8sx. All rights reserved.
//

import UIKit
class DayCell: UITableViewCell {
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var caloriesLabel: UILabel!
    @IBOutlet weak var mealNumberLabel: UILabel!
    @IBOutlet weak var mealEatingTimePeriodLabel: UILabel!
    
    var model: Day! {
        didSet{
            setupCell(model)
        }
    }
    
    func setupCell(_ model: Day) {
        
    }
}
