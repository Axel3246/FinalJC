//
//  ContainerView.swift
//  JustCodersI
//
//  Created by Axel Amós Hernández Cárdenas on 18/10/23.
//

import SwiftUI

struct ContainerView: View {
    
    // Condition to show the splash screen
    @State var isSplashScreenPresented: Bool = true
    
    var body: some View {
       // TimerOneView()
        if !isSplashScreenPresented{
            ContentView()
            //IdeaSelectView()
        }
        else{
            // Passing the reference of the variable iSSP to change in the other view (.toggle())
            SplashView(isPresented: $isSplashScreenPresented)
        }
    }
}

#Preview {
    ContainerView()
}
