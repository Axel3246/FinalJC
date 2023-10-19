//
//  Project.swift
//  JustCodersI
//
//  Created by Axel Amós Hernández Cárdenas on 17/10/23.
//

import Foundation
import SwiftUI

struct Project : Identifiable{
    var id: UUID = UUID()
    var projectTitle: String = "No Title"
    var projectDate: String = Date.now.formatted(date: .numeric, time: .omitted)
    // Here we should include an idea arr, no?
}
