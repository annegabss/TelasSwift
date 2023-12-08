//
//  VermelhaViewController.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-02 on 08/12/23.
//

import Foundation
import UIKit

class VermelhaViewController: UIViewController {
    
    var onVermelhaTap: (() -> Void)?
    var onAzulTap: (() -> Void)?
    
    
    //MARK: -  Clouseres

    var viewMain = VermelhaView()
    
       override func loadView(){
           self.view = viewMain
       }
       
    // é executado quando está carregando
       override func viewDidLoad() {
           super.viewDidLoad()
        self.title = "Vermelha"
           
           self.navigationController?.navigationBar.prefersLargeTitles=true

       }

       }
