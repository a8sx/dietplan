//
//  User.swift
//  DietPlan
//
//  Created by Dragan Todorovic on 12/4/18.
//  Copyright © 2018 a8sx. All rights reserved.
//

import Foundation
import RealmSwift
class User: Object {
    @objc dynamic var name: String = ""
    @objc dynamic var caloriesPerDay: Int = 0
    @objc dynamic var carbsPerDay: Int = 0
    @objc dynamic var fatPerDay: Int = 0
    @objc dynamic var proteinsPerDay: Int = 0
}
