//
//  Hike.swift
//  FundamentalsOfSwiftUi
//
//  Created by Pratik Ghadge on 05/01/25.
//

import Foundation

struct Hike: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let photo: String
    let miles: Double
}
