//
//  LoginView.swift
//  App_ImobiliariaApp
//
//  Created by user288578 on 12/10/25.
//
import SwiftUI

struct LoginView: View {
    @State private var nomeUsuario = ""
    @State private var senha = ""
    @State private var erroUsuario = 0
    @State private var erroSenha = 0
    
    @State private var autenticado = false
    
    var body: some View {
        NavigationStack {

            ZStack {
                Color(.systemBackground).ignoresSafeArea()
                
                VStack(spacing: 40) {
                    

                    VStack(spacing: 8) {
                        Image(systemName: "house.fill") // Ícone de casa (Logo)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .foregroundColor(.blue)
                        

                        Text("Imobiliária App")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.blue)
                    }

                    
                    VStack(spacing: 15) {
                        
                        // Campo de Usuário
                        TextField("Nome de Usuário", text: $nomeUsuario)
                            .padding()
                            .background(Color(.systemGray6))
                            .cornerRadius(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.red, lineWidth: CGFloat(erroUsuario))
                            )
                        
                        // Campo de Senha
                        SecureField("Senha", text: $senha)
                            .padding()
                            .background(Color(.systemGray6))
                            .cornerRadius(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.red, lineWidth: CGFloat(erroSenha))
                            )
                        
                        Button("Entrar") {
                            autenticarUsuario(nomeUsuario: nomeUsuario, senha: senha)
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding(.top, 10)
                    }
                    .padding(.horizontal, 40)
                    
                    // Link de navegação (invisível)
                    NavigationLink(
                        destination: ListaImoveisView(usuarioLogado: nomeUsuario, estaAutenticado: $autenticado),
                        isActive: $autenticado
                    ) {
                        EmptyView()
                    }
                    .hidden()
                }
            }
        }
    }

    func autenticarUsuario(nomeUsuario: String, senha: String) {
        guard let usuario = mockUsuarios.first(where: { $0.nomeDeUsuario == nomeUsuario }) else {
            erroUsuario = 2
            erroSenha = 0
            return
        }
        
        erroUsuario = 0
        let tentativaHash = Usuario.sha256(senha)
        
        if tentativaHash == usuario.hashSenha {
            erroSenha = 0
            autenticado = true
        } else {
            erroSenha = 2
        }
    }
}

#Preview {
    LoginView()
}
