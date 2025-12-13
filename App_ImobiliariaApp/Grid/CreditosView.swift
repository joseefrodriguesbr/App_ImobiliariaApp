//
//  CreditosView.swift
//  App_ImobiliariaApp
//
//  Created by user288578 on 12/12/25.
//
import SwiftUI

struct CreditosView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                
                Image(systemName: "person.text.rectangle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .foregroundColor(.blue)
                
                Text("Créditos")
                    .font(.title2)
                    .fontWeight(.bold)
                
                VStack(alignment: .leading, spacing: 10) {
                    
                    Text("Disciplina:")
                        .font(.headline)
                    
                    Text("DM126 - Desenvolvimento de aplicativos em Swift para iOS")
                        .font(.title3)
                        .fontWeight(.heavy)
                        .foregroundColor(.blue)
                    
                    Text("Autor:")
                        .font(.headline)
                    

                    Text("José Enderson Ferreira Rodrigues")
                        .font(.title3)
                        .fontWeight(.heavy)
                        .foregroundColor(.blue)
                    
                    
                }
                .padding(.horizontal, 40)
                
                Spacer()
            }
            .padding(.top, 50)
            .navigationTitle("Sobre")
            .navigationBarTitleDisplayMode(.inline)
            
            
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Fechar") {
                        dismiss()
                    }
                }
            }
        }
    }
}

#Preview {
    CreditosView()
}
