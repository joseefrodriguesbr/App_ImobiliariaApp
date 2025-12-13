//
//  ListaImoveisView.swift
//  App_ImobiliariaApp
//
//  Created by user288578 on 12/10/25.
//


import SwiftUI

enum SortOption: String, CaseIterable, Identifiable {
    case none = "Padrão"
    case priceAscending = "Preço (Menor)"
    case priceDescending = "Preço (Maior)"
    case rooms = "Quartos"
    
    var id: String { self.rawValue }
}

struct ListaImoveisView: View {
    var usuarioLogado: String
    @Binding var estaAutenticado: Bool
    
    let imoveis: [Imovel] = mockImoveis
    
    @State private var selectedSortOption: SortOption = .none
    
    // Estado Para controlar a exibição do popup (sheet)
    @State private var showingCredits = false
    
    var sortedImoveis: [Imovel] {
        switch selectedSortOption {
        case .none:
            return imoveis
        case .priceAscending:
            return imoveis.sorted { $0.preco < $1.preco }
        case .priceDescending:
            return imoveis.sorted { $0.preco > $1.preco }
        case .rooms:
            return imoveis.sorted { $0.quartos > $1.quartos }
        }
    }
    
    var body: some View {
        VStack(spacing: 0) {
            
            CustomNavigationBar(
                onBackAction: {
                    self.estaAutenticado = false
                },
                // abre o sheet creditos
                onInfoAction: {
                    self.showingCredits = true
                },
                title: "Olá, \(usuarioLogado)",
                showBackButton: true
            )
            
            // Picker (Combo) de Ordenação
            HStack {
                Text("Ordenar por:")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                Picker("Ordenar por", selection: $selectedSortOption) {
                    ForEach(SortOption.allCases) { option in
                        Text(option.rawValue).tag(option)
                    }
                }
                .pickerStyle(.menu)
                .frame(maxWidth: .infinity, alignment: .leading)
                
                Spacer()
            }
            .padding(.horizontal)
            .padding(.vertical, 8)
            
            // Lista Usando a Propriedade Ordenada
            List {
                ForEach(sortedImoveis) { imovel in
                    NavigationLink(destination: DetalheImovelView(imovel: imovel, usuarioLogado: usuarioLogado, estaAutenticado: $estaAutenticado)) {
                        LinhaImovelView(imovel: imovel)
                    }
                }
            }
            .listStyle(.plain)
            .navigationBarBackButtonHidden(true)
        }
        //  Exibe a CreditosView quando showingCredits é true
        .sheet(isPresented: $showingCredits) {
            CreditosView()
        }
    }
}

#Preview {
    ListaImoveisView(usuarioLogado: "cliente", estaAutenticado: .constant(true))
}
