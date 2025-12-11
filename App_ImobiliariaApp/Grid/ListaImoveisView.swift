//
//  ListaImoveisView.swift
//  App_ImobiliariaApp
//
//  Created by user288578 on 12/10/25.
//


import SwiftUI

// 1. Definição do Enum para as Opções de Ordenação
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
    
    // Lista original de imóveis
    let imoveis: [Imovel] = mockImoveis
    
    // 2. Estado para armazenar a opção de ordenação selecionada
    @State private var selectedSortOption: SortOption = .none
    
    // 3. Propriedade Computada para retornar a lista ordenada
    var sortedImoveis: [Imovel] {
        switch selectedSortOption {
        case .none:
            // Retorna a lista original sem alteração
            return imoveis
        case .priceAscending:
            // Ordena por preço (do menor para o maior)
            return imoveis.sorted { $0.preco < $1.preco }
        case .priceDescending:
            // Ordena por preço (do maior para o menor)
            return imoveis.sorted { $0.preco > $1.preco }
        case .rooms:
            // Ordena por número de quartos (do maior para o menor)
            return imoveis.sorted { $0.quartos > $1.quartos }
        }
    }
    
    var body: some View {
        VStack(spacing: 0) {
            
            // Custom Navigation Bar (Ação de Logout)
            CustomNavigationBar(
                onBackAction: {
                    self.estaAutenticado = false
                },
                title: "Olá, \(usuarioLogado)",
                showBackButton: true
            )
            
            // 4. Picker (Combo) de Ordenação
            HStack {
                Text("Ordenar por:")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                Picker("Ordenar por", selection: $selectedSortOption) {
                    ForEach(SortOption.allCases) { option in
                        Text(option.rawValue).tag(option)
                    }
                }
                .pickerStyle(.menu) // Estilo de menu para parecer um combo
                .frame(maxWidth: .infinity, alignment: .leading)
                
                Spacer()
            }
            .padding(.horizontal)
            .padding(.vertical, 8)
            
            // 5. Lista Usando a Propriedade Ordenada
            List {
                ForEach(sortedImoveis) { imovel in // << Usando sortedImoveis
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
