//
//  DataSourceMock.swift
//  App_ImobiliariaApp
//
//  Created by user288578 on 12/10/25.
//

import Foundation

import Foundation

let mockImoveis: [Imovel] = [
    Imovel(
        id: 1,
        titulo: "Apartamento de Luxo com Vista Mar",
        localizacao: "Copacabana, Rio de Janeiro",
        preco: 1500000.00,
        quartos: 3,
        banheiros: 3,
        area: 120,
        imagemMiniatura: "ap_copacabana_thumb",
        imagensDetalhe: ["ap_copacabana_det1", "ap_copacabana_det2", "ap_copacabana_det3"],
        descricao: "Lindo apartamento reformado, a poucos metros da praia, com vista espetacular para o mar. Prédio com infraestrutura completa."
    ),
    Imovel(
        id: 2,
        titulo: "Casa Charmosa em Bairro Nobre",
        localizacao: "Jardins, São Paulo",
        preco: 3200000.00,
        quartos: 4,
        banheiros: 5,
        area: 280,
        imagemMiniatura: "casa_jardins_thumb",
        imagensDetalhe: ["casa_jardins_det1", "casa_jardins_det2", "casa_jardins_det3"],
        descricao: "Casa ampla e ensolarada, com jardim, piscina e área gourmet. Localização privilegiada em rua tranquila."
    ),
    Imovel(
        id: 3,
        titulo: "Estúdio Moderno Próximo ao Metrô",
        localizacao: "Pinheiros, São Paulo",
        preco: 450000.00,
        quartos: 1,
        banheiros: 1,
        area: 45,
        imagemMiniatura: "studio_pinheiros_thumb",
        imagensDetalhe: ["studio_pinheiros_det1", "studio_pinheiros_det2",  "studio_pinheiros_det3"],
        descricao: "Perfeito para quem busca praticidade. Prédio novo com serviços pay-per-use e lazer na cobertura."
    ),
    Imovel(
        id: 4,
        titulo: "Apartamento de 2 Quartos perto do Parque",
        localizacao: "Vila Mariana, SP",
        preco: 750000.00,
        quartos: 2,
        banheiros: 2,
        area: 75,
        imagemMiniatura: "ap_vm_thumb",
        imagensDetalhe: ["ap_vm_det1"],
        descricao: "Imóvel em localização privilegiada, a poucos metros de área verde. Condomínio com lazer básico."
    ),
    Imovel(
        id: 5,
        titulo: "Loft Industrial com Pé Direito Duplo",
        localizacao: "Pinheiros, SP",
        preco: 1100000.00,
        quartos: 1,
        banheiros: 2,
        area: 90,
        imagemMiniatura: "loft_ph_thumb",
        imagensDetalhe: ["loft_ph_det1", "loft_ph_det2"],
        descricao: "Design moderno, espaço aberto e conceito minimalista. Ideal para jovens executivos."
    ),
    Imovel(
        id: 6,
        titulo: "Sítio com Nascente e Casa de Hóspedes",
        localizacao: "Teresópolis, RJ",
        preco: 950000.00,
        quartos: 5,
        banheiros: 4,
        area: 400,
        imagemMiniatura: "sitio_tr_thumb",
        imagensDetalhe: ["sitio_tr_det1", "sitio_tr_det2"],
        descricao: "Propriedade rural com vasto terreno, paz e natureza. Perfeito para refúgio de fim de semana."
    ),
    Imovel(
        id: 7,
        titulo: "Apartamento Econômico e Funcional",
        localizacao: "Cachambi, RJ",
        preco: 290000.00,
        quartos: 2,
        banheiros: 1,
        area: 60,
        imagemMiniatura: "ap_eco_thumb",
        imagensDetalhe: ["ap_eco_det1"],
        descricao: "Bom estado de conservação, condomínio familiar. Excelente custo-benefício."
    )]

let mockUsuarios: [Usuario] = [
    Usuario(nomeDeUsuario: "Cliente", senha: "123"),
    Usuario(nomeDeUsuario: "Corretor", senha: "senhaforte"),
    Usuario(nomeDeUsuario: "Admin", senha: "abc123"),
]

let nomeUsuarioPadrao = "Visitante"
