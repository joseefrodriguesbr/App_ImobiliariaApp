//
//  CustomNavigationBar.swift
//  App_ImobiliariaApp
//
//  Created by user288578 on 12/10/25.
//
import SwiftUI

struct CustomNavigationBar: View {
    @Environment(\.dismiss) var dismiss

    var onBackAction: (() -> Void)? = nil

    var title: String
    var showBackButton: Bool = true
    
    var body: some View {
        HStack {
            if showBackButton {
                Button {
                    // usado para Logout na ListaImoveisView
                    if let action = onBackAction {
                        action()
                    } else {
                        dismiss() // Botao volta na tela de detalhes
                    }
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.blue)
                        .imageScale(.large)
                }
            }
            
            Spacer()
            
            Text(title)
                .font(.headline)
                .fontWeight(.bold)
            
            Spacer()
            
            if showBackButton {
                Color.clear.frame(width: 25)
            }
        }
        .padding(.horizontal)
        .frame(height: 44)
        .background(Color(.systemBackground))
    }
}

#Preview {
    VStack {
        // Exemplo 1: Com Logout Action
        CustomNavigationBar(onBackAction: {}, title: "Voltar ao Login", showBackButton: true)
            .border(Color.gray)

        // Exemplo 2: Com Ação Padrão (agora funcionando)
        CustomNavigationBar(title: "Voltar Padrão", showBackButton: true)
            .border(Color.gray)
        
        Spacer()
    }
}
