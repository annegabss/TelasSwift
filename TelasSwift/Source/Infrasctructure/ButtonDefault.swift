//
//  ButtonDefault.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-02 on 08/12/23.
//

import Foundation
import UIKit


class ButtonDefault: UIButton {
    
    init(botao: String) {
        super.init(frame: .zero)
        initDefault(botao: botao)
      }
    
    
    
    private func initDefault(botao: String) {
        self.setTitle(botao, for: .normal)
        self.backgroundColor = .buttonBackGroundColor
        self.layer.cornerRadius = 14
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
