//
//  UpperUpperTabView.swift
//  MieMieMie
//
//  Created by Julie Zhang on 2025-11-05.
//

import SwiftUI

struct UpperUpperTabView: View {
    var title: String
    var body: some View {
        ZStack(alignment:.top) {
            Color("buttonColor")
                .ignoresSafeArea()
                .frame(height:5)
            HStack {
                Spacer()
                    .frame(maxWidth:.infinity)
                Text(title)
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
            .offset(y:-40)
            .frame(height:5)
        }
    }
}

#Preview {
    UpperUpperTabView(title:"Profile")
}
