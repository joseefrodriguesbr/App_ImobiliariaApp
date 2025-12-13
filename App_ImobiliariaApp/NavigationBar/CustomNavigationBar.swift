//
//  CustomNavigationBar.swift
//  App_ImobiliariaApp
//
//  Created by user288578 on 12/10/25.
//
import SwiftUI

struct CustomNavigationBar: View {
    @Environment(\.dismiss) var dismiss
    
    // Ação para o botão de voltar/logout
    var onBackAction: (() -> Void)? = nil
    
    // Ação para o botão de créditos
    var onInfoAction: (() -> Void)? = nil

    var title: String
    var showBackButton: Bool = true
    
    var body: some View {
        HStack {
            if showBackButton {
                Button {
                    // Executa a ação de voltar
                    if let action = onBackAction {
                        action()
                    } else {
                        dismiss()
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
            
            // Exibe o botão de créditos
            if let infoAction = onInfoAction {
                Button(action: infoAction) {
                    Image(systemName: "info.circle")
                        .imageScale(.large)
                        .foregroundColor(.blue)
                }
            } else if showBackButton {
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
        // Exemplo otão de Créditos
        CustomNavigationBar(onInfoAction: {}, title: "Com Créditos", showBackButton: true)
            .border(Color.gray)
        
        // Exemplo Padrão
        CustomNavigationBar(title: "Sem Créditos", showBackButton: true)
            .border(Color.gray)
        
        Spacer()
    }
}
