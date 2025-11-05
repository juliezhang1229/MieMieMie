//
//  AssessmentView.swift
//  MieMieMie
//
//  Created by Julie Zhang on 2025-11-04.
//

import SwiftUI
import Foundation

struct AssessmentView: View {
    @Binding var selectedTab: Int
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Text("AI Assessment")
                        .foregroundColor(Color("buttonColor"))
                        .font(.system(size:50, weight:.bold, design:.rounded))
                    Spacer()
                }
                .padding()
                Spacer()
                NavigationLink {
                    UpperUpperTabView(title: "Injuries")
                    AssessInjuryView()
                } label: {
                    Text("Assess your injuries HERE")
                        .frame(width: 360, height: 290)
                        .font(.system(size:40, weight:.bold, design:.rounded))
                        .foregroundColor(.white)
                        .background(Color("buttonColor"))
                        .cornerRadius(10)
                }
                Spacer()
                NavigationLink {
                    AssessMovesView()
                } label: {
                    Text("Assess your workout moves HERE")
                        .frame(width: 360, height: 290)
                        .font(.system(size:40, weight:.bold, design:.rounded))
                        .foregroundColor(.white)
                        .background(Color("buttonColor"))
                        .cornerRadius(10)
                }
                .padding(.vertical)
                
            }
        }
    }
}

#Preview {
    AssessmentView(selectedTab: .constant(1))
}
