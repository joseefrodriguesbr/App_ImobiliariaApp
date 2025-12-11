//
//  CarrosselImagensView.swift
//  App_ImobiliariaApp
//
//  Created by user288578 on 12/10/25.
//

import SwiftUI

struct CarrosselImagensView: View {
    let nomesImagens: [String]
    
    var body: some View {
        TabView {
            ForEach(nomesImagens, id: \.self) { nomeImagem in
                Image(nomeImagem)
                    .resizable()
                    .scaledToFill()
                    .clipped()
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}

#Preview {
    CarrosselImagensView(nomesImagens: mockImoveis[0].imagensDetalhe)
        .frame(height: 250)
}
