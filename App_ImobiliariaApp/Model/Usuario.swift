//
//  Usuario.swift
//  App_ImobiliariaApp
//
//  Created by user288578 on 12/10/25.
//

import Foundation
import CryptoKit

struct Usuario {
    public var nomeDeUsuario: String
    public var hashSenha: String
    
    init(nomeDeUsuario: String, senha: String) {
        self.nomeDeUsuario = nomeDeUsuario
        self.hashSenha = Usuario.sha256(senha)
    }
    
    public static func sha256(_ input: String) -> String {
        let data = Data(input.utf8)
        let digest = SHA256.hash(data: data)
        return digest.map { String(format: "%02x", $0) }.joined()
    }
}
