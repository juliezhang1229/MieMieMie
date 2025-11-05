//
//  RehabView.swift
//  MieMieMie
//
//  Created by Julie Zhang on 2025-11-04.
//

import SwiftUI

struct RehabExercisesView: View {
    var exercises = [
        ExerciseTabModel(icon: "quadstretch", name: "Quadriceps Stretch", reps: "3 sets x 30 seconds"),
        ExerciseTabModel(icon: "step", name: "Step Downs", reps: "3 sets x 12 reps"),
        ExerciseTabModel(icon: "squat", name: "Eccentric Squats", reps: "3 sets x 10 reps"),
        ExerciseTabModel(icon: "ice", name: "Ice Therapy", reps: "15 minutes")
    ]
    var body: some View {
        VStack {
            HStack {
                Text("Today's Rehabilitation\n Exercises")
                    .bold()
                    .font(.title2)
                Spacer()
                Text("45\nmin")
                    .frame(alignment:.center)
                    .foregroundColor(Color("Membership"))
                    .bold()
                    .frame(width:80, height: 60)
                    .background(Color("MinutesBg"))
                    .cornerRadius(15)
            }
            .frame(height:80)
            .padding()
            ExerciseTabView(exercise: exercises[0], icon:"figure.strengthtraining.functional", workoutBgColor: "QuadBg", workoutIconColor: "QuadIcon")
            Divider()
            ExerciseTabView(exercise: exercises[1], icon:"figure.stairs", workoutBgColor: "StepBg", workoutIconColor: "StepIcon")
            Divider()
            ExerciseTabView(exercise: exercises[2], icon:"figure.strengthtraining.traditional", workoutBgColor: "SquatBg", workoutIconColor: "SquatIcon")
            Divider()
            ExerciseTabView(exercise: exercises[3], icon:"snowflake", workoutBgColor: "MinutesBg", workoutIconColor: "Membership")
            Divider()
        }
        .background(Color(.white))
        .cornerRadius(20)
        .shadow(color:.black.opacity(0.3), radius: 8, x:0, y:5)
        .padding()
    }
}


struct ExerciseTabView: View {
    var exercise: ExerciseTabModel
    var icon: String
    var workoutBgColor: String
    var workoutIconColor: String
    var body: some View {
        HStack {
            //Image(exercise.icon)
            Image(systemName:icon)
                /*.resizable()
                .aspectRatio(contentMode: .fit)*/
                .font(.title)
                .foregroundColor(Color(workoutIconColor))
                .frame(width: 60, height: 60)
                .background(Color(workoutBgColor))
                .cornerRadius(15)
            VStack(alignment:.leading) {
                Text(exercise.name)
                    .font(.headline)
                    .bold()
                Text(exercise.reps)
                    .foregroundColor(Color(.systemGray))
            }
            .offset(x:10)
            Spacer()
            Button(action: {
                //some action
            }) {
                Image(systemName: "chevron.right")
                    .font(.headline)
                    .foregroundColor(Color(.systemGray))
            }
        }
        .padding(.horizontal)
        .frame(height:70)
    }
}

#Preview {
    RehabExercisesView()
}
