//
//  VerdeCoordinator.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-02 on 08/12/23.
//

import Foundation
import UIKit
class VerdeCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = VerdeViewController()
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    func  gotoAzul() {
       let coordinator = AzulCoordinator(navigationController: navigationController)
        coordinator.start()
    }
    
    func  gotoVermelha() {
       let coordinator = VermelhaCoordinator(navigationController: navigationController)
        coordinator.start()
    }
    
}
