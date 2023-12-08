//
//  AzulCoordinator.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-02 on 08/12/23.
//

import Foundation
import UIKit
class AzulCoordinator: Coordinator {
    
    //faço com que todas as telas que usarem o LoginCoordinator impremente
    //o navigation controller. Senão todos todas as vezes teria que instãnciá-lo
    var navigationController: UINavigationController
    
    //cria um construtor para incializar meu navationCrontroller
    init (navigationController: UINavigationController ) {
            self.navigationController = navigationController
     
        }

      func start() {
     //chama a login
     let viewController = AzulViewController()
          self.navigationController.pushViewController(viewController, animated: true)
          
          
          viewController.onVerdeTap = {
              self.gotoVerde()
          }
    }
    
    func  gotoVerde() {
       let coordinator = VerdeCoordinator(navigationController: navigationController)
        coordinator.start()
    }
}
