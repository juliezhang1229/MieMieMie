//
//  MessageModel.swift
//  MieMieMie
//
//  Created by Julie Zhang on 2025-11-04.
//

import Foundation

struct MessageModel: Identifiable {
    let id = UUID()
    let user: String
    let profileImage: String
    let message: String
}
// database link user to profile 
