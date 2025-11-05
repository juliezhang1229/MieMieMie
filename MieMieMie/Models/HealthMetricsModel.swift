//
//  HealthMetricsModel.swift
//  MieMieMie
//
//  Created by Julie Zhang on 2025-11-04.
//

import Foundation

struct HealthMetricsModel: Identifiable {
    let id = UUID()
    let primary: String
    let secondary: String
    let tertiary: String
}
