//
//  VermelhaView.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-02 on 08/12/23.
//

import Foundation
import UIKit

class VermelhaView: UIView {
    //MARK: - Initialize
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .red
        setupVisualElements()
    }
    
    var onVerdeTap: (()-> Void)?
    var onAzulTap: (()-> Void)?
    
    var buttonAzul = ButtonDefault(botao: "Ir para a tela azul", backgroundColor: .blue)
    var buttonVerde = ButtonDefault(botao: "Voltar para a tela verde", backgroundColor: .green)
    
    func setupVisualElements() {
        self.addSubview(buttonAzul)
        self.addSubview(buttonVerde)
        
        buttonVerde.addTarget(self, action: #selector(verdeTap), for: .touchUpInside)
        buttonAzul.addTarget(self, action: #selector(azulTap), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            
            buttonAzul.widthAnchor.constraint(equalToConstant: 374),
            buttonAzul.heightAnchor.constraint(equalToConstant: 60),
            buttonAzul.topAnchor.constraint(equalTo: self.topAnchor, constant: 228),
            buttonAzul.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonAzul.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            buttonVerde.widthAnchor.constraint(equalToConstant: 374),
            buttonVerde.heightAnchor.constraint(equalToConstant: 60),
            buttonVerde.topAnchor.constraint(equalTo: buttonAzul.bottomAnchor, constant: 25),
            buttonVerde.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonVerde.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16)])
        
        
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    @objc
    private func verdeTap() {
        onVerdeTap?()
    }
    
    @objc
    private func azulTap() {
        onAzulTap?()
    }
}
