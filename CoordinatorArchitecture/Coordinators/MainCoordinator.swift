//
//  MainCoordinator.swift
//  CoordinatorArchitecture
//
//  Created by Mukul Bakshi on 25/05/19.
//  Copyright © 2019 Mukul Bakshi. All rights reserved.
//

import Foundation
import UIKit

class MainCoordinator:NSObject {
    
    let navigationController:UINavigationController
    
    init(navController:UINavigationController) {
        self.navigationController = navController
    }
    
    func start() {
        let vc = WelcomeController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}

//Welcome Navigation
extension MainCoordinator:WelcomeEventsAction {

    func moveToLoginScreen() {
        let vc = LoginController.instantiate(dependencies: "Helloo Passing Dependency with Initiliser Injection(Without accessing the Private variable)")
        navigationController.pushViewController(vc, animated: true)
    }
    
    func moveToSignupScreen() {
        let vc = SignupController.instantiate()
        navigationController.pushViewController(vc, animated: true)
    }
    
}
