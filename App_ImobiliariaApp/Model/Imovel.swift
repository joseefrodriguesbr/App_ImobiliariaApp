//
//  Imovel.swift
//  App_ImobiliariaApp
//
//  Created by user288578 on 12/10/25.
//

import Foundation

import Foundation

struct Imovel: Identifiable {
    let id: Int
    let titulo: String
    let localizacao: String
    let preco: Double
    let quartos: Int
    let banheiros: Int
    let area: Int // em metros quadrados
    let imagemMiniatura: String // Nome da imagem em miniatura (Asset)
    let imagensDetalhe: [String] // Nomes das imagens de detalhes (Assets)
    let descricao: String
    
    var precoFormatado: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale(identifier: "pt_BR")
        return formatter.string(from: NSNumber(value: preco)) ?? "R$ 0,00"
    }
}
