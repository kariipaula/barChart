//
//  ContentView.swift
//  barChart
//
//  Created by Karina Paula on 24/02/20.
//  Copyright © 2020 Karina Paula. All rights reserved.
//

import SwiftUI

struct BarChart: View {
    
    var dataSet : [ChartInfo] = [
        ChartInfo(value: 1.0, date: 2019),
        ChartInfo(value: 2.0, date: 2019),
        ChartInfo(value: 3.0, date: 2018),
        ChartInfo(value: 4.0, date: 2018),
        ChartInfo(value: 5.0, date: 2019),
        ChartInfo(value: 6.0, date: 2019),
        ChartInfo(value: 7.0, date: 2019),
        ChartInfo(value: 8.0, date: 2018),
        ChartInfo(value: 9.0, date: 2018),
        ChartInfo(value: 10.0, date: 2018),
        ChartInfo(value: 11.0, date: 2019),
        ChartInfo(value: 12.0, date: 2020),
        ChartInfo(value: 13.0, date: 2020),
        ChartInfo(value: 14.0, date: 2020),
        ChartInfo(value: 15.0, date: 2020)
    ]
    
    func sumValues(_ year: Int) -> Float {
        let filterResult = self.dataSet.filter { (recordChartInfo) -> Bool in
            recordChartInfo.date == year
        }
        
        let reduceResult = filterResult.reduce(0.0) { (result, recordChartInfo) -> Float in
            return result+recordChartInfo.value
        }
        
        return reduceResult
    }

    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    
                    Text("Primeira atividade")
                        .foregroundColor(Color(red: 0.98, green: 0.46, blue: 0.41, opacity: 1.0))
                        .kerning(1.2)
                        .fontWeight(.light)
                        .font(.largeTitle)
                    
                    Text("Gráfico de barras: Ano x Quantidade")
                        .italic()
                        .font(.body)
                        .fontWeight(.light)
                        .foregroundColor(Color.gray)
                    
                }
                .padding(20)
                Spacer()
                
                
                
            }
            
            
            HStack {
                ForEach(2018..<2021) { year in
                    VStack {
                        Spacer()
                        Text("\(self.sumValues(year))")
                            .font(.footnote)
                            .rotationEffect(.degrees(-90))
                            .offset(y: -35)
                            .zIndex(1)
                                                
                        Rectangle()
                            .fill(Color(red: 0.98, green: 0.46, blue: 0.41, opacity: 1.0))
                            .frame(width: 20, height: CGFloat(self.sumValues(year)) * 5.0)
                        
                        Text("\(year)")
                    }
                }
            }
            Spacer()
            
            
        }
        
    }
}

struct BarChart_Previews: PreviewProvider {
    static var previews: some View {
        BarChart()
    }
}
