//
//  LinhaImovelView.swift
//  App_ImobiliariaApp
//
//  Created by user288578 on 12/10/25.
//

import SwiftUI

struct LinhaImovelView: View {
    let imovel: Imovel
    
    var body: some View {
        HStack(alignment: .top) {
            Image(imovel.imagemMiniatura)
                .resizable()
                .scaledToFill()
                .	frame(width: 80, height: 80)
                .cornerRadius(10)
                .clipped()
            
            VStack(alignment: .leading, spacing: 4) {
                Text(imovel.titulo)
                    .font(.headline)
                    .lineLimit(1)
                
                Text(imovel.localizacao)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                Text(imovel.precoFormatado)
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.green)
                
                HStack {
                    Image(systemName: "bed.double.fill")
                    Text("\(imovel.quartos)")
                    Image(systemName: "bathtub.fill")
                    Text("\(imovel.banheiros)")
                    Image(systemName: "square.fill")
                    Text("\(imovel.area) m²")
                }
                .font(.caption)
                .foregroundColor(.secondary)
            }
            Spacer()
        }
        .padding(.vertical, 8)
    }
}

#Preview {
    LinhaImovelView(imovel: mockImoveis[0])
        .padding()
}
