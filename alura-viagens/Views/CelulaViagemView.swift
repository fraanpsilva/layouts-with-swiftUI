//
//  CelulaViagemView.swift
//  alura-viagens
//
//  Created by Francilene Silva on 15/12/2022.
//

import SwiftUI

struct CelulaViagemView: View {
    
    var viagem: Viagem
    
    var body: some View {
        
        VStack(alignment: .leading) // colocando o titulo a esquerda
        {
            Text(viagem.titulo)
            Image(viagem.imagem)
                .resizable()
                .frame(height: 125)
            HStack{
                Text(viagem.quantidadeDeDias)
                Spacer() // colocando um espaço entre as labels
                Text(viagem.valor)
            }
        }
        
        
    }
    
    struct CelulaViagemView_Previews: PreviewProvider {
        static var previews: some View {
            CelulaViagemView(viagem: viagens[0])
                .previewLayout(.fixed(width: 350, height: 200))
        }
    }
}
