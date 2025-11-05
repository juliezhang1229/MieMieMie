//
//  ProgressView.swift
//  MieMieMie
//
//  Created by Julie Zhang on 2025-11-04.
//

import SwiftUI

struct ProgressView_: View {
    var body: some View {
        VStack{
            ScrollView {
                VStack {
                    PainView()
                    FunctionalRecoveryView()
                }
            }
        }
    }
}



struct FunctionalRecoveryView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Functional\nRecovery")
                    .font(.title2)
                    .bold()
                Spacer()
                Text("76%\nrecovered")
                    .foregroundColor(Color("StepIcon"))
                    .font(.title3)
            }
            .padding()
            HStack {
                Text("Mobility: ")
                    .font(.title3)
                    .bold()
                ProgressView(value: 80, total: 100)
                    .progressViewStyle(LinearProgressViewStyle(tint:Color("StepIcon")))
                    .scaleEffect(y:2)
                Text("85%")
                    .font(.headline)
            }
            .padding()
            HStack {
                Text("Strength: ")
                    .font(.title3)
                    .bold()
                ProgressView(value:65, total:100)
                    .progressViewStyle(LinearProgressViewStyle(tint:Color("SquatIcon")))
                    .scaleEffect(y:2)
                Text("65%")
                    .font(.headline)
            }
            .padding()
        }
        .frame(height:250)
        .background(Color(.white))
        .cornerRadius(20)
        .shadow(color:.black.opacity(0.3), radius: 8, x:0, y:5)
        .padding()
    }
}

#Preview {
    ProgressView_()
}
