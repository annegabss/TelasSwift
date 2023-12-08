//
//  AzulView.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-02 on 08/12/23.
//

import Foundation
import UIKit

class AzulView: UIView {
    //MARK: - Initialize
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .blue
        
    }
    
    var onVerdeTap: (() -> Void)?

        
        var buttonVerde = ButtonDefault(botao: "Ir para a tela verde")
    
        func setupVisualElements() {            
            self.addSubview(buttonVerde)
            
            buttonVerde.addTarget(self, action: #selector(verdeTap), for: .touchUpInside)
            
            NSLayoutConstraint.activate([
        
                buttonVerde.widthAnchor.constraint(equalToConstant: 374),
                buttonVerde.heightAnchor.constraint(equalToConstant: 60),
                buttonVerde.topAnchor.constraint(equalTo: self.topAnchor, constant: 25),
                buttonVerde.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
                buttonVerde.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            ])
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
                
 @objc
private func verdeTap(){
onVerdeTap?()
                }
}
