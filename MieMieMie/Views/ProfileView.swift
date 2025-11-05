//
//  ProfileView.swift
//  MieMieMie
//
//  Created by Julie Zhang on 2025-11-04.
//

import SwiftUI

struct ProfileView: View {
    let PersonalInfos = [
        PersonalInfoModel(name: "Janja", email: "janja_garnbret@mie.com", joined: "Feb 2023", status: "Active Recovery", membership: "Premium Member"),
        PersonalInfoModel(name: "XiYangYang", email: "XiYangYang@mie.com", joined: "Dec 2024", status: "Active recovery", membership: "Free Member")
    ]
    
    let HealthMetrics = [
        HealthMetricsModel(primary: "Patellar Tendonitis", secondary: "somethingsomething", tertiary: "banannaaa")
    ]
    
    var body: some View {
        VStack(spacing:0) {
            ScrollView(.vertical) {
                VStack {
                    Image("janja")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 150)
                        .clipShape(Circle())
                        .overlay {
                            Circle()
                                .stroke(.white, lineWidth: 4)
                        }
                        .shadow(radius:7)
                        .padding()
                    Text("Janja Garnbret")
                        .font(.title2)
                        .bold()
                    
                    HStack {
                        Image(systemName: "medal")
                            .foregroundColor(Color("Membership"))
                            .bold()
                        Text(PersonalInfos[0].membership)
                            .font(.subheadline)
                            .foregroundColor(Color("Membership"))
                            .bold()
                    }
                    .padding(.horizontal, 15)
                    .padding(.vertical,5)
                    .background(Color("MembershipBg"))
                    .cornerRadius(20)
                    
                    PersonalInfoView(PersonalInfo: PersonalInfos[0])
                        .padding()
                    
                    HealthMetricsView(Health: HealthMetrics[0])
                }
                .padding(.top)
            }
        }
    }
}

struct PersonalInfoView: View {
    let PersonalInfo: PersonalInfoModel
    var body: some View {
        VStack(spacing:0) {
            HStack {
                Text("Personal Information")
                    .font(.headline)
                    .bold()
                Spacer()
                Button("Edit") {
                    //action
                }
                .font(.subheadline)
                .foregroundColor(.blue)
            }
            .padding(.all)
            HStack {
                Text("Name")
                    .foregroundColor(.secondary)
                    .frame(width:80, alignment:.leading)
                Spacer()
                Text(PersonalInfo.name)
                    .frame(alignment:.trailing)

            }
            .padding(.vertical,12)
            .padding(.horizontal)
            Divider()
            HStack {
                Text("Email")
                    .foregroundColor(.secondary)
                    .frame(width:80, alignment:.leading)
                Spacer()
                Text(PersonalInfo.email)
                    .frame(alignment:.trailing)

            }
            .padding(.vertical,12)
            .padding(.horizontal)
            Divider()
            HStack {
                Text("Joined")
                    .foregroundColor(.secondary)
                    .frame(width:80, alignment:.leading)
                Spacer()
                Text(PersonalInfo.joined)
                    .frame(alignment:.trailing)

            }
            .padding(.vertical,12)
            .padding(.horizontal)
            Divider()
            HStack {
                Text("Status")
                    .foregroundColor(.secondary)
                    .frame(width:80, alignment:.leading)
                Spacer()
                Text(PersonalInfo.status)
                    .frame(alignment:.trailing)

            }
            .padding(.vertical,12)
            .padding(.horizontal)
            Divider()
        }
        .frame(width: 370, height:250)
        .background(Color(.white))
        .cornerRadius(20)
        .shadow(color:.black.opacity(0.3), radius: 8, x:0, y:5)

    }
}

struct HealthMetricsView: View {
    let Health: HealthMetricsModel
    var body: some View {
        VStack(spacing:0) {
            HStack {
                Text("Health Metrics")
                    .font(.headline)
                    .bold()
                Spacer()
            }
            .padding(.all)
            HStack {
                Text("Primary")
                    .foregroundColor(.secondary)
                    .frame(width:80, alignment:.leading)
                Spacer()
                Text(Health.primary)
                    .frame(alignment:.trailing)

            }
            .padding(.vertical,12)
            .padding(.horizontal)
            Divider()
            HStack {
                Text("Secondary")
                    .foregroundColor(.secondary)
                    .frame(width:80, alignment:.leading)
                Spacer()
                Text(Health.secondary)
                    .frame(alignment:.trailing)

            }
            .padding(.vertical,12)
            .padding(.horizontal)
            Divider()
            HStack {
                Text("Tertiary")
                    .foregroundColor(.secondary)
                    .frame(width:80, alignment:.leading)
                Spacer()
                Text(Health.tertiary)
                    .frame(alignment:.trailing)

            }
            .padding(.vertical,12)
            .padding(.horizontal)
            Divider()
        }
        .frame(width: 370, height:200)
        .background(Color(.white))
        .cornerRadius(20)
        .shadow(color:.black.opacity(0.3), radius: 8, x:0, y:5)

    }
}
#Preview {
    ProfileView()
}
