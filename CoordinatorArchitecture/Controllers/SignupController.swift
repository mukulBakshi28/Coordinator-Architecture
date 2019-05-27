//
//  SignupController.swift
//  CoordinatorArchitecture
//
//  Created by Mukul Bakshi on 27/05/19.
//  Copyright © 2019 Mukul Bakshi. All rights reserved.
//

import UIKit

class SignupController: UIViewController {

    //MARK: LifeCycle Method
    static func instantiate() ->LoginController {
        let vc = LoginController.storyboarded() as! LoginController
        return vc
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
     
}
