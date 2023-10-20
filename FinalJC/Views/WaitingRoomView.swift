//
//  WaitingRoomView.swift
//  FinalJC
//
//  Created by Axel Amós Hernández Cárdenas on 20/10/23.
//

import SwiftUI

// Struct to show num of conenctions (or people)
// TODO: We need to implement the count
struct NumOfPersonsView: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            // Here we will change depending num of connections...
            Text("\(Image(systemName: "person.fill")) 3")
                .font(.title)
            
        }
        .padding(.leading, 290)
        .padding(.top, -298)
    }
}

// Struct that contains the buttons to start (or add) ppl
// as well as end the room (or project)
// TODO: We need to implement the functionality to start & end
// Start: Calls Timer One
struct StartAndEndBtnView: View {
    var body: some View {
        VStack{
            Button(action: {}){
                
                Text("\(Image(systemName: "checkmark.circle.fill")) Start")
                    .frame(maxWidth: .infinity)
            }
            
            Button(action: {}){
                Text("\(Image(systemName: "xmark.circle.fill")) End")
                    .frame(maxWidth: .infinity)
            }
            .accentColor(.red)
            
        }
        .buttonStyle(.borderedProminent)
        .controlSize(.large)
        .padding(.top, 6)
        .shadow(radius: 4)
        .padding()
    }
}

// Struct that contains the topic of the project
// and the list to invite people
// TODO: We need to implement the functionality to pass the topic value and the invite stuff.
struct TopicAndInviteView: View {
    var body: some View {
        VStack{
            Text("\(Image(systemName: "info.circle.fill")) YOUR IDEAS WILL BE TOTALLY ANONYMOUS")
                .font(.caption)
                .foregroundStyle(.secondary)
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 360, height: 120)
                    .shadow(radius: 12)
                    .foregroundStyle(.secondary)
                    .opacity(0.2)
                VStack{
                    Text("Room's Topic")
                        .font(.body)
     
                   // Change Topic depending on string
                    Text("Pasta Night")
                        .font(.title)
                        .padding(.top, 4)
                        .bold()
                }
                .foregroundStyle(.primary)
            }
        }
    }
}

// Main Structure
struct WaitingRoomView: View {
    
    var body: some View {
        NavigationStack{
            ZStack {
                NumOfPersonsView() // Icon and number -> Need param for counting
                ScrollView{
                    TopicAndInviteView() // Topic --> Need Param for topic
                }
                .padding(.top, 20)
            }
            HStack (spacing: 10){
                StartAndEndBtnView()
            }
            .navigationTitle("Your Room")
        }
    }
}


#Preview {
    // We need to pass the value of the "topic" str here
    WaitingRoomView()
}
