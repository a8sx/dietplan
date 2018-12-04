//
//  Food.swift
//  DietPlan
//
//  Created by Dragan Todorovic on 12/4/18.
//  Copyright © 2018 a8sx. All rights reserved.
//

import Foundation
import RealmSwift
class Food: Object {
    @objc dynamic var date: Date = Date()
    @objc dynamic var name: String = ""
    @objc dynamic var fats: Int = 0
    @objc dynamic var carbs: Int = 0
    @objc dynamic var proteings: Int = 0
    @objc dynamic var calories: Int = 0
}
