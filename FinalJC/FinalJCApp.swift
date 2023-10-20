//
//  FinalJCApp.swift
//  FinalJC
//
//  Created by Axel Amós Hernández Cárdenas on 19/10/23.
//

import SwiftUI

@main
struct FinalJCApp: App {
    
    init() {
        UILabel.appearance(whenContainedInInstancesOf: [UINavigationBar.self]).adjustsFontSizeToFitWidth = true
    }
    
    var body: some Scene {
        WindowGroup {
            ContainerView()
        }
    }
}
