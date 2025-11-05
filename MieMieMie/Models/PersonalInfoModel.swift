//
//  PersonalInfoModel.swift
//  MieMieMie
//
//  Created by Julie Zhang on 2025-11-04.
//

import Foundation

struct PersonalInfoModel: Identifiable {
    let id = UUID()
    let name: String
    let email: String
    let joined: String
    let status: String
    let membership: String
}
