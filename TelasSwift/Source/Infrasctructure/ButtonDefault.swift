//
//  ButtonDefault.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-02 on 08/12/23.
//

import Foundation
import UIKit

class ButtonDefault: UIButton {
        
        init(botao: String, backgroundColor: UIColor) {
            super.init(frame: .zero)
            initDefault(botao: botao, backgroundColor: backgroundColor)
        }
        
        private func initDefault(botao: String, backgroundColor: UIColor) {
            self.setTitle(botao, for: .normal)
            self.backgroundColor = backgroundColor
            self.layer.cornerRadius = 14
            self.translatesAutoresizingMaskIntoConstraints = false
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    }

