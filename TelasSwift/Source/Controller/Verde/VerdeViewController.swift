//
//  VerdeViewController.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-02 on 08/12/23.
//

import Foundation
import UIKit

class VerdeViewController: UIViewController {
    
    var onVermelhaTap: (() -> Void)?
    
    var onAzulTap: (() -> Void)?
    
    //MARK: -  Clouseres
    lazy var verdeView: VerdeView = {
        let verdeView = VerdeView ()

        
        verdeView.onAzulTap = {
            self.onAzulTap?()
        }
        
        verdeView.onVermelhaTap = {
            self.onVermelhaTap?()
        }
        
        return verdeView
    }()
    
    override func loadView() {
        self.view = verdeView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Verde"
       
        self.navigationController?.navigationBar.prefersLargeTitles = true     //titulo grande
        
    }

       }

