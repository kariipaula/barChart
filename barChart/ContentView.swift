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
        HStack{
            Text("Hello, World!")
            Button(action: {
                print("TESTE")
            }) {
                 Text("Botão")
            }
        
        }
        
    }
}

struct BarChart_Previews: PreviewProvider {
    static var previews: some View {
        BarChart()
    }
}
