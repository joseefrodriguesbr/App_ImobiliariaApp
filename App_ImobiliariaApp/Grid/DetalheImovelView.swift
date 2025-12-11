//
//  DetalheImovelView.swift
//  App_ImobiliariaApp
//
//  Created by user288578 on 12/10/25.
//
import SwiftUI

struct DetalheImovelView: View {
    let imovel: Imovel
    var usuarioLogado: String
    
    @Binding var estaAutenticado: Bool
    
    var body: some View {
        VStack(spacing: 0) {
            
            CustomNavigationBar(title: usuarioLogado, showBackButton: true)
            
            ScrollView {
                VStack(alignment: .leading, spacing: 15) {
                    
                    CarrosselImagensView(nomesImagens: imovel.imagensDetalhe)
                        .frame(height: 250)
                        .padding(.bottom, 10)
                    
                    Text(imovel.precoFormatado)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(.green)
                    
                    Text(imovel.titulo)
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    HStack {
                        Image(systemName: "mappin.and.ellipse")
                        Text(imovel.localizacao)
                    }
                    .foregroundColor(.secondary)
                    
                    Divider()
                    
                    HStack(spacing: 20) {
                        FeatureBadge(icon: "bed.double.fill", value: "\(imovel.quartos)", label: "Quartos")
                        FeatureBadge(icon: "bathtub.fill", value: "\(imovel.banheiros)", label: "Banheiros")
                        FeatureBadge(icon: "square.fill", value: "\(imovel.area)m²", label: "Área")
                    }
                    
                    Divider()
                    
                    Text("Descrição")
                        .font(.headline)
                    Text(imovel.descricao)
                        .foregroundColor(.primary)
                        .lineSpacing(4)
                }
                .padding(.horizontal)
                .padding(.bottom, 20)
            }
        }
        .navigationBarBackButtonHidden(true)
        .ignoresSafeArea(.all, edges: .bottom)
    }
}

#Preview {
    DetalheImovelView(
        imovel: mockImoveis[0],
        usuarioLogado: "cliente",
        estaAutenticado: .constant(true)
    )
}
