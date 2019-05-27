//
//  LoginController.swift
//  CoordinatorArchitecture
//
//  Created by Mukul Bakshi on 27/05/19.
//  Copyright © 2019 Mukul Bakshi. All rights reserved.
//

import UIKit

class LoginController: UIViewController {

    private var userValue:String = ""
   
    //MARK: LifeCycle Methods
    static func instantiate(dependencies value:String) ->LoginController {
        let vc = LoginController.storyboarded() as! LoginController
        vc.userValue = value
        return vc
    }
      override func viewDidLoad() {
        super.viewDidLoad()
         view.backgroundColor = .green
    }
 
}
