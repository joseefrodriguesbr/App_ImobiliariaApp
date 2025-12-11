//
//  ListaImoveisView.swift
//  App_ImobiliariaApp
//
//  Created by user288578 on 12/10/25.
//


import SwiftUI

struct ListaImoveisView: View {
    var usuarioLogado: String
    
    @Binding var estaAutenticado: Bool
    
    let imoveis: [Imovel] = mockImoveis
    
    var body: some View {
        VStack(spacing: 0) {
            
            CustomNavigationBar(
                onBackAction: {
                   estaAutenticado = false // Força o logout
                },
                title: "Olá, \(usuarioLogado)",
                showBackButton: true
            )
            
            List {
                ForEach(imoveis) { imovel in
                    // Passa o Binding para a DetalheImovelView
                    NavigationLink(destination: DetalheImovelView(imovel: imovel, usuarioLogado: usuarioLogado, estaAutenticado: $estaAutenticado)) {
                        LinhaImovelView(imovel: imovel)
                    }
                }
            }
            .listStyle(.plain)
            .navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    ListaImoveisView(usuarioLogado: "cliente", estaAutenticado: .constant(true))
}
