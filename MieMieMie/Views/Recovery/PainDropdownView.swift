//
//  PainDropdownView.swift
//  MieMieMie
//
//  Created by Julie Zhang on 2025-11-05.
//

import SwiftUI

struct PainDropdownView: View {
    var options = ["Last 7 days", "Last month", "Last 6 months", "Last year", "All time"]
    @State private var selectedOption: String = "Last 7 days"
    
    var body: some View {
        VStack {
            Menu {
                ForEach(options, id: \.self) { option in
                    Button(action: {
                        selectedOption = option
                    }) {
                        Text(option)
                    }
                }
            } label: {
                HStack {
                    Text(selectedOption)
                        .foregroundColor(.black)
                        .font(.title3)
                    Image(systemName: "chevron.down")
                        .foregroundColor(.gray)
                        .font(.title3)
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 12)
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color.white)
                        /*.overlay(
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                        )*/
                )
            }
        }
    }
}

#Preview {
    PainDropdownView()
}
