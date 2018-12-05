//
//  DayCell.swift
//  DietPlan
//
//  Created by Dragan Todorovic on 12/4/18.
//  Copyright © 2018 a8sx. All rights reserved.
//

import UIKit
import SwipeCellKit

class DayCell: SwipeTableViewCell {
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var caloriesLabel: UILabel!
    @IBOutlet weak var mealNumberLabel: UILabel!
    @IBOutlet weak var mealEatingTimePeriodLabel: UILabel!
    
    @IBOutlet weak var backgroudView: UIView!
    var model: Day! {
        didSet{
            setupCell(model)
        }
    }
    
    func setupCell(_ model: Day) {
        backgroudView.layer.cornerRadius = 3.0
        backgroudView.layer.borderColor = UIColor.gray.cgColor
        backgroudView.layer.borderWidth = 1.0
    }
}
