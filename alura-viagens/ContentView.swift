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
                
                // MARK: - VStack Header
                VStack{
                    Text("alura viagens")
                        .foregroundColor(Color.white) // altera a cor do texto
                        .font(.custom("Avenir Black", size: 20))
                        .padding(.top, 50)
                    Text("ESPECIAL")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Book", size: 20))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                    Text("BRASIL")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Black", size: 23))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                }
                
                // confi
                .frame(width: view.size.width , height: 180, alignment: .top)
                .background(Color.purple)
               
                // MARK: - Botões
                HStack{
                    Button(action: {}){
                        Text("Hotéis")
                            .font(.custom("Avenir Medium", size: 17))
                            .foregroundColor(.white)
                    }
                    .frame(width: 100, height: 50)
                    .background(Color.blue)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 10))
                    .offset(x: -45)
                    
                    
                    Button(action: {}){
                        Text("Pacotes")
                            .font(.custom("Avenir Medium", size: 17))
                            .foregroundColor(.white)
                    }
                    .frame(width: 100, height: 50)
                    .background(Color.orange)
                    
                    // arrendondando as bordas do botão
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 10))
                    .offset(x: 45)
                }
                .offset(y: -25)
                
            
                // criando uma lista
                List{
                    Text("Rio de Janeiro")
                    Text("Ceará")
                    Text("Atibaia")
                    Text("Rio de Janeiro")
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
    
    // struct de preview - serve apenas para mostrar a pré visualização
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
}
