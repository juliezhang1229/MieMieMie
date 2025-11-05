//
//  RecoveryView.swift
//  MieMieMie
//
//  Created by Julie Zhang on 2025-11-04.
//

import SwiftUI

struct RecoveryView: View {
    @Binding var selectedTab: Int
    var body: some View {
        VStack {
            UpperTabView(upperTitle: "Recovery")
            ScrollView(.vertical) {
                VStack{
                    RecoverJourneyView()
                        .background(Color(.white))
                        .cornerRadius(20)
                        .shadow(color:.black.opacity(0.3), radius: 8, x:0, y:5)
                        .padding(.horizontal)
                    RehabExercisesView()
                    ProgressView_()
                }
            }
        }
    }
}

struct RecoverJourneyView: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "dumbbell")
                    .font(.title2)
                    .bold()
                    .frame(alignment:.leading)
                Text("Your Recovery Journey")
                    .font(.title2)
                    .bold()
                Spacer()
            }
            .padding(.vertical)
            HStack {
                Text("Based on your confirmed diagnosis:")
                Spacer()
            }
            HStack {
                Text("Patellar Tendonitis")
                    .bold()
                Spacer()
            }
            Spacer()
            HStack {
                Text("Level:\nModerate")
                    .foregroundColor(Color("SquatIcon"))
                    .frame(width:90, height:60)
                    .background(Color("SquatBg"))
                    .cornerRadius(15)
                Spacer()
                Text("Phase:\nRecovery")
                    .foregroundColor(Color("StepIcon"))
                    .frame(width:90, height:60)
                    .background(Color("StepBg"))
                    .cornerRadius(15)
                Spacer()
                Text("Est:\n4 weeks")
                    .foregroundColor(Color("Membership"))
                    .frame(width:90, height:60)
                    .background(Color("MinutesBg"))
                    .cornerRadius(15)
            }
        }
        .padding()
        .frame(height:230)
    }
}


#Preview {
    RecoveryView(selectedTab: .constant(2))
}
