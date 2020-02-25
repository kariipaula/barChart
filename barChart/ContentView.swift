//
//  ContentView.swift
//  barChart
//
//  Created by Italo Boss on 24/02/20.
//  Copyright © 2020 Italo Boss. All rights reserved.
//

import SwiftUI

struct BarChart: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("Primeira atividade")
                    .foregroundColor(Color(red: 0.98, green: 0.46, blue: 0.41, opacity: 1.0))
                    .kerning(1.2)
                    .fontWeight(.light)
                    .font(.largeTitle)
                
                Text("Gráfico de barras")
                    .italic()
                    .font(.body)
                    .fontWeight(.light)
                    .foregroundColor(Color.gray)
                    
            }
            
            Spacer()
            
            VStack {
                Button(
                    action: {
                        print("TESTE")
                    },
                    
                    label: {
                        HStack {
                            Image(systemName: "chart.bar.fill")
                            Text("Chart")
                        }
                        .padding(15.0)
                        .foregroundColor(Color.white)
                        .background(Color(red: 0.98, green: 0.46, blue: 0.41))
                        .cornerRadius(8.0)
                    }
                )
            }
            
        }
        
        
    }
}

struct BarChart_Previews: PreviewProvider {
    static var previews: some View {
        BarChart()
    }
}
