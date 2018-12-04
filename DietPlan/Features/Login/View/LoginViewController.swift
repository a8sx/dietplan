//
//  ViewController.swift
//  DietPlan
//
//  Created by Dragan Todorovic on 12/4/18.
//  Copyright © 2018 a8sx. All rights reserved.
//

import UIKit
class LoginViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var caloriesTextField: UITextField!
    @IBOutlet weak var proteinsTextField: UITextField!
    @IBOutlet weak var carbsTextField: UITextField!
    @IBOutlet weak var fatsTextField: UITextField!
    
    var viewModel = LoginViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupObservers()
    }
    
    
    @IBAction func continuePressed(_ sender: UIButton) {
        if !viewModel.allFieldsAreFilled()  { return }
        
        let home = UIStoryboard(name: "Home", bundle: nil)
        let viewController = home.instantiateViewController(withIdentifier: "HomeTabBarController") 
            
        self.present(viewController, animated: true, completion: nil)
    }
    
    func setupObservers() {
        
    }
    
}

