//
//  SplashView.swift
//  JustCodersI
//
//  Created by Axel Amós Hernández Cárdenas on 18/10/23.
//

import SwiftUI

struct SplashView: View {
    
    @Binding var isPresented: Bool
    
    // Variables (@State cuz' we're changing data within this view)
    @State private var scale = CGSize(width: 0.8, height: 0.8)
    @State private var systemImageOpacity = 0.0
    @State private var imageOpacity = 1.0
    @State private var opacity = 1.0
    
    var body: some View {
        
        ZStack {
            ZStack{
                Image(systemName: "bolt.horizontal.fill")
                    .font(.system(size: 70))
                    .foregroundStyle(.white)
                    .opacity(systemImageOpacity)
                
                Image(systemName: "bolt.horizontal.fill")
                    .resizable()
                    .scaledToFit()
                    .font(.system(size: 50))
                    .tint(.primary)
                    .opacity(imageOpacity)
                    .offset(x: 0, y:-2)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            }
            .scaleEffect(scale)
        }
        .opacity(opacity)
        .onAppear{
            withAnimation(.easeInOut(duration: 1.5)){
                scale = CGSize(width: 1, height: 1)
                systemImageOpacity = 1
            }
            /* DispatchQueue will help us run code without interfering with the
             main "running" code in Swift. So, esentially, this code will
             execute 2.5 seconds after the view is presented.
             What it does?: Changes @State variables defined at the top of
             this view to change the visual opacity and scaling of the icons.
             */
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5, execute: {
                withAnimation(.easeIn(duration: 0.35)){
                    scale = CGSize(width: 50, height: 50)
                    opacity = 0
                }
            })
            
            // This DQMaA will take the user to the main page.
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.8, execute: {
                withAnimation(.easeIn(duration: 0.2)){
                    isPresented.toggle()
                }
            })
        }
    }
}

#Preview {
    SplashView(isPresented: .constant(true))
}
