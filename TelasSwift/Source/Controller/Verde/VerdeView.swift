//
//  VerdeView.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-02 on 08/12/23.
//

import Foundation
import UIKit

class VerdeView: UIView {
    //MARK: - Initialize
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .green
        setupVisualElements()
        
    }
    
    
    var onVermelhaTap: (()-> Void)?
    
    var onAzulTap: (()-> Void)?
    
    var buttonVermelha = ButtonDefault(botao: "Ir para a tela vermelha", backgroundColor: .red)
    
    var buttonAzul = ButtonDefault(botao: "Voltar para a tela azul", backgroundColor: .blue)
    
    func setupVisualElements() {
        self.addSubview(buttonVermelha)
        self.addSubview(buttonAzul)
        
        buttonVermelha.addTarget(self, action: #selector(vermelhaTap), for: .touchUpInside)
        buttonAzul.addTarget(self, action: #selector(azulTap), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            
            buttonVermelha.widthAnchor.constraint(equalToConstant: 374),
            buttonVermelha.heightAnchor.constraint(equalToConstant: 60),
            buttonVermelha.topAnchor.constraint(equalTo: self.topAnchor, constant: 228),
            buttonVermelha.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonVermelha.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            buttonAzul.widthAnchor.constraint(equalToConstant: 374),
            buttonAzul.heightAnchor.constraint(equalToConstant: 60),
            buttonAzul.topAnchor.constraint(equalTo: buttonVermelha.bottomAnchor, constant: 25),
            buttonAzul.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonAzul.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16)
        ])
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    @objc
    private func vermelhaTap() {
        onVermelhaTap?()
    }
    
    @objc
    private func azulTap() {
        onAzulTap?()
    }
}
