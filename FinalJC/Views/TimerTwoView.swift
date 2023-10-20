//
//  TimerTwoView.swift
//  JustCodersI
//
//  Created by Axel Amós Hernández Cárdenas on 19/10/23.
//

import SwiftUI


// TODO: GENERAL --> CHANGE VIEW WHEN IT ENDS TO IDEASELECTVIEW()
struct TimerTwoView: View {
    
    @State private var countUp = 0
    
    var body: some View{
        VStack {
            switch countUp{
            case 0:
                Text("")
                    .font(.system(size: 56))
                    .bold()
                    .transition(.scale)
            case 1:
                Text("Time's Up!")
                    .font(.system(size: 56))
                    .bold()
                    .transition(.scale)
            default:
                Text("We change view here")
            }
        }
        .onAppear {
            startCountUp()
        }
    }
    
    func startCountUp() {
        Timer.scheduledTimer(withTimeInterval: 1.3, repeats: true) { timer in
            withAnimation(.easeOut(duration: 0.2)) {
                if countUp < 3 {
                    countUp += 1
                } else {
                    // Stop the timer
                    timer.invalidate()
                }
            }
        }
    }
}



#Preview {
    TimerTwoView()
}
