//
//  VerdeViewController.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-02 on 08/12/23.
//

import Foundation
import UIKit

class VerdeViewController: UIViewController {
    
    //MARK: -  Clouseres

    var viewMain = VerdeView()
    
       override func loadView(){
           self.view = viewMain
       }
       
    // é executado quando está carregando
       override func viewDidLoad() {
           super.viewDidLoad()
        self.title = "Verde"
           
           self.navigationController?.navigationBar.prefersLargeTitles=true

       }

       }

