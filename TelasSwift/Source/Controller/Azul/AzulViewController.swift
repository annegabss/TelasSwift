//
//  AzulViewController.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-02 on 08/12/23.
//

import Foundation
import UIKit

class AzulViewController: UIViewController {
    
    var onVerdeTap: (() -> Void)?

    
    lazy var azulView: AzulView = {
        let azulView = AzulView ()
        azulView.onVerdeTap = {
            self.onVerdeTap?()
        }
        
        return azulView
    }()
    
    override func loadView() {
        self.view = azulView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Azul"
       
        self.navigationController?.navigationBar.prefersLargeTitles = true     //titulo grande
        
    }
  
}
