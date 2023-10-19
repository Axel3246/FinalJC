//
//  Ideas.swift
//  JustCodersI
//
//  Created by Axel Amós Hernández Cárdenas on 19/10/23.
//

import Foundation

struct Ideas: Identifiable {
    let id: UUID = UUID()
    var ideaNumber: Int
    var ideaDescription: String
    var liked: Bool = false
}
