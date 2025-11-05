//
//  HomeView.swift
//  MieMieMie
//
//  Created by Julie Zhang on 2025-11-03.
//

import SwiftUI

struct HomeView: View {
    @Binding var selectedTab: Int
    
    let communities = [
        CommunityCard(title:"Tennis elbow rehabilitation training", imageName: "tennisElbow"),
        CommunityCard(title: "The right way to apply muscle tape to your tendon", imageName: "muscleTape")
    ]
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Text("Hello")
                        .foregroundColor(Color("buttonColor"))
                        .font(.system(size:70,weight:.bold, design:.rounded))
                        .padding()
                    Spacer()
                    NavigationLink {
                        UpperUpperTabView(title: "Profile")
                        ProfileView()
                    } label: {
                        Image(systemName:"person.crop.circle")
                            .font(.system(size:40))
                            .foregroundColor(Color("buttonColor"))
                            .padding()
                    }
                }
                
                VStack(spacing:15) {
                    HStack(spacing:15) {
                        Button ("Assess your injuries HERE") {
                            //action to perform
                        }
                        .frame(width: 200, height: 150)
                        .font(.title)
                        .bold()
                        .foregroundColor(.white)
                        .background(Color("buttonColor"))
                        .cornerRadius(10)
                        
                        Button ("My\ninjuries") {
                            //action to perform
                        }
                        .frame(width: 150, height: 150)
                        .font(.title)
                        .bold()
                        .foregroundColor(.white)
                        .background(Color("buttonColor"))
                        .cornerRadius(10)
                    }
                    HStack {
                        Button ("Rehabilitation Counselor") {
                            //action to perform
                        }
                        .frame(width: 300, height: 150)
                        .font(.title)
                        .bold()
                        .foregroundColor(.white)
                        .background(Color("buttonColor"))
                        .cornerRadius(10)
                    }
                }
                VStack {
                    HStack {
                        Text("Community")
                            .font(.system(size:50, weight:.bold, design:.rounded))
                            .foregroundColor(Color("buttonColor"))
                            .padding()
                        Spacer()
                    }
                    
                    ScrollView(.horizontal) {
                        LazyHStack(spacing:10) {
                            ForEach(communities) {
                                community in
                                CommunityCardView(community: community)
                            }
                        }
                    }
                    .padding()
                    .offset(y:-20)
                }
            }
            //Spacer()
        }
    }
}

struct CommunityCardView: View {
    let community: CommunityCard
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image(community.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 200, height: 120)
                .cornerRadius(8)
            Text(community.title)
                .font(.system(size:15))
                .bold()
                .foregroundColor(Color("buttonColor"))
                .multilineTextAlignment(.leading)
                //.fixedSize(horizontal: false, vertical: true)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .frame(width: 200, height:150)
    }
}


#Preview {
    HomeView(selectedTab: .constant(0))
}
