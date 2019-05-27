//
//  LoginController.swift
//  CoordinatorArchitecture
//
//  Created by Mukul Bakshi on 25/05/19.
//  Copyright © 2019 Mukul Bakshi. All rights reserved.
//

import UIKit

class WelcomeController: UIViewController {
    
    var coordinator:MainCoordinator!
    
    //MARK: Life Cycle Methods
    static func instantiate() -> WelcomeController {
        let vc = WelcomeController.storyboarded() as! WelcomeController
        return vc
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loginAction(_ sender: UIButton) {
        coordinator.moveToLoginScreen()
    }
    
    @IBAction func welcomeAction(_ sender: UIButton) {
        coordinator.moveToSignupScreen()
    }
    
}

//Navigation Protocols
protocol WelcomeEventsAction: class{
    func moveToLoginScreen()
    func moveToSignupScreen()
}

extension UIViewController {
    static func storyboarded() -> UIViewController! {
        let identifier = String(describing: self)
        let stryBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = stryBoard.instantiateViewController(withIdentifier: identifier)
        return vc
    }
}
