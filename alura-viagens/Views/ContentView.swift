//
//  ContentView.swift
//  alura-viagens
//
//  Created by Francilene Silva on 09/12/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader{ view in
            
            // MARK: - VStack Principal
            VStack{
                // chamando o header
                HeaderView()
                    .frame(width: view.size.width, height: 210, alignment: .top)
          // criando uma lista dinâmica
                List(viagens){ viagem in
                    // implementando a celulaView
                        CelulaViagemView(viagem: viagem)
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}
    
    // struct de preview - serve apenas para mostrar a pré visualização
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

