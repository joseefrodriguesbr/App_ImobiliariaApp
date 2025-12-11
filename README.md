# Pós-Graduação em Desenvolvimento Mobile e Cloud Computing – Inatel
## DM126 - Desenvolvimento de aplicativos em Swift para iOS

## Projeto Final da Disciplina

### 👤 Autor: 
José Enderson Ferreira Rodrigues   
jose.rodrigues@pg.inatel.br, jose.e.f.rodrigues.br@gmail.com

## 📌 Implementação
Aplicativo de imobiliária para plataforma iOS com SwiftUI desenvolvido no X-Code

### Requisitos atendidos:
✅ O app deve implementa a arquitetura declarativa vista nas aulas (Tipo de dados -> SubViews (Models) -> View Final)

✅  O app contém autenticação e uma tela de login

## 📌 Imagens do projeto 
<img style="margin-right: 30px" src="./Tela1.png" width="900px" alt="Imagem 1"/><br>  

## 📌 Organização do projeto
Aplicativo de imobiliária para plataforma iOS com SwiftUI desenvolvido no X-Code

### Models (3 Arquivos)

- Imovel.swift
- Usuario.swift
- DataSourceMock.swift

### Componentes reutilizáveis (3 Arquivos)

- CustomNavigationBar.swift
- CarrosselImagensView.swift
- FeatureBadge.swift 

### Views (4 Arquivos)

- LoginView.swift
- LinhaImovelView.swift
- ListaImoveisView.swift
- DetalheImovelView.swift
- ContentView.swift

### App (1 Arquivo)

- App_ImobiliariaApp.swift

## 📌 Detalhamento da solução

#### 📂 Estrutura de pastas do projeto
```
📦 App_ImobiliariaApp
 ┣📂Carousel                        # Carrossel de imagens
 ┃ ┗📜CarrosselImagensView.swift   
 ┣📂Grid                           # Listagem e detalhamento dos anúncios
 ┃ ┣📜DetalheImovelView.swift
 ┃ ┣📜FeatureBadge.swift
 ┃ ┣📜LinhaImovelView.swift   
 ┃ ┗📜ListaImoveisView.swift  
 ┣📂Login                          # Tela de login
 ┃ ┗📜LoginView.swift 
 ┣📂Model                          # Mocks e tipos de dados
 ┃ ┣📜DataSourceMock.swift
 ┃ ┣📜Imovel.swift  
 ┃ ┗📜Usuario.swift 
 ┣📂NavigationBar                  # Barra de navegação do aplicativo
 ┃ ┗📜CustomNavigationBar.swift            
 ┣📜App_ImobiliariaAppApp.swift    
 ┗📜ContentView.swift             
```

## 🛠️ IDE
- **X-Code**

## 💻 Linguagem
- **Swift**
