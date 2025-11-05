//
//  PainView.swift
//  MieMieMie
//
//  Created by Julie Zhang on 2025-11-04.
//

import SwiftUI

struct PainView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Pain Level\nTimeline")
                    .font(.title2)
                    .bold()
                Spacer()
                PainDropdownView()
            }
            .padding()
            PainChartView()
                .padding()
        }
        .frame(height:350)
        .background(Color(.white))
        .cornerRadius(20)
        .shadow(color:.black.opacity(0.3), radius: 8, x:0, y:5)
        .padding(.horizontal)
    }
}

#Preview {
    PainView()
}
