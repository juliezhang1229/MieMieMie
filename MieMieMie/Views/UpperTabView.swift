//
//  UpperTabView.swift
//  MieMieMie
//
//  Created by Julie Zhang on 2025-11-04.
//

import SwiftUI

struct UpperTabView: View {
    var upperTitle: String
    var body: some View {
        ZStack(alignment:.top) {
            Color("buttonColor")
                .ignoresSafeArea()
                .frame(height:50)
            HStack {
                Spacer()
                    .frame(maxWidth:.infinity)
                Text(upperTitle)
                    .font(.title2)
                    .bold()
                    .frame(alignment:.center)
                Spacer()
                    .frame(maxWidth:.infinity)
                /*Button(action: {
                    //editing action
                }) {
                    Image(systemName: "ellipsis")
                        .font(.title2)
                        .foregroundColor(.black)
                }*/
            }
            .padding(.horizontal)
            .offset(y:5)
        }
    }
}

#Preview {
    UpperTabView(upperTitle: "Profile")
}
