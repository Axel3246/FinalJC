//
//  TimerOneView.swift
//  JustCodersI
//
//  Created by Axel Amós Hernández Cárdenas on 19/10/23.
//

import SwiftUI

struct TimerOneView: View {
    
    @State private var countdown = 3
    
    var body: some View {
        VStack {
            switch countdown{
            case 3:
                Text("Ready?")
                    .font(.system(size: 56))
                    .bold()
                    .transition(.scale)
                Text("\(countdown)")
                    .font(.system(size: 60))
                    .transition(.scale)
                    .bold()
            case 2:
                Text("Set")
                    .font(.system(size: 56))
                    .transition(.scale)
                    .bold()
                Text("\(countdown)")
                    .font(.system(size: 60))
                    .transition(.scale)
                    .bold()
            default:
                Text("Ideate!")
                    .font(.system(size: 56))
                    .transition(.opacity)
                    .bold()
            }
        }
        .onAppear {
            startCountdown()
        }
    }
    
    func startCountdown() {
        Timer.scheduledTimer(withTimeInterval: 1.5, repeats: true) { timer in
            withAnimation(.easeOut(duration: 0.1)) {
                if countdown > 1 {
                    countdown -= 1
                } else {
                    // Stop the timer
                    timer.invalidate()
                    
                }
            }
        }
    }
}

#Preview {
    TimerOneView()
}
