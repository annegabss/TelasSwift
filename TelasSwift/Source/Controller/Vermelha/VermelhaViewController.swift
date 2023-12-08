//
//  VermelhaViewController.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-02 on 08/12/23.
//

import Foundation
import UIKit

class VermelhaViewController: UIViewController {
    
    var onVerdeTap: (() -> Void)?
    var onAzulTap: (() -> Void)?
    
    
    lazy var vermelhaView: VermelhaView = {
        let vermelhaView = VermelhaView ()
        vermelhaView.onVerdeTap = {
            self.onVerdeTap?()
        }
        vermelhaView.onAzulTap = {
            self.onAzulTap?()
        }
        
        return vermelhaView
    }()
    
    override func loadView() {
        self.view = vermelhaView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Vermelha"
        
        self.navigationController?.navigationBar.prefersLargeTitles = true     //titulo grande
        
    }
}
