//
//  PainChartView.swift
//  MieMieMie
//
//  Created by Julie Zhang on 2025-11-04.
//

import SwiftUI
import Charts

struct PainChartView: View {
    let PainDataPoints = [
        PainData(date: "Mon", painLevel: 80),
        PainData(date:"Tue", painLevel:70),
        PainData(date:"Wed", painLevel: 75),
        PainData(date:"Thu", painLevel: 60),
        PainData(date:"Fri", painLevel: 55),
        PainData(date: "Sat", painLevel: 55),
        PainData(date: "Sun", painLevel: 52)
    ]
    var body: some View {
        VStack {
            Chart {
                ForEach([0, 25, 50, 75, 100], id: \.self) { level in
                    RuleMark(y: .value("Grid", level))
                        .foregroundStyle(.gray.opacity(0.3))
                        .lineStyle(StrokeStyle(lineWidth: 1, dash: level == 0 ? [] : [5, 5]))
                }
                ForEach(PainDataPoints) { item in
                    LineMark(x: .value("Date", item.date), y: .value("Pain", item.painLevel))
                        .foregroundStyle(Color("PainChartLine"))
                    PointMark(x: .value("Date", item.date), y: .value("Pain", item.painLevel))
                        .symbol {
                            ZStack {
                                Circle()
                                    .fill(Color("PainChartPoint"))
                                    .frame(width: 10, height: 10)
                                Circle()
                                    .fill(.white)
                                    .frame(width:5, height:5)
                            }
                        }
                }
            }
            .chartYScale(domain: 0...100)
            .chartXAxis {
                AxisMarks(preset: .aligned, values:.automatic) { value in
                        AxisValueLabel()
                        .foregroundStyle(.gray)
                            .font(.headline)
                        AxisTick()
                            .foregroundStyle(.gray.opacity(0.5))
                        AxisGridLine()
                            .foregroundStyle(.gray.opacity(0.2))
                }
            }
            .chartYAxis {
                AxisMarks(preset:.aligned, values:.automatic) { value in
                    AxisValueLabel()
                        .foregroundStyle(.gray)
                        .font(.caption)
                    AxisGridLine()
                        .foregroundStyle(.gray.opacity(0.3))
                }
            }
            .frame(height:200)
        }
    }
}

struct PainData: Identifiable {
    let id = UUID()
    let date: String
    let painLevel: Int
}
#Preview {
    PainChartView()
}
