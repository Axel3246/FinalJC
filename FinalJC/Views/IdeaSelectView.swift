//
//  IdeaSelectView.swift
//  JustCodersI
//
//  Created by Axel Amós Hernández Cárdenas on 19/10/23.
//

import SwiftUI

// Struct that creates the heart button symbol depending
// on the state of the liked property
// TODO: MAKE THE BUTTON AND THE "LIKED" PROPERTY TO CHANGE ON TAP...
struct HeartBtnView: View {
    var liked: Bool
    var body: some View {
        if(liked){
            return (Image(systemName: "heart.fill")
                .font(.system(size: 24))
                .frame(maxWidth: .infinity, alignment: .trailing)
                .foregroundStyle(Color.red))
        }
        return (Image(systemName: "heart")
            .font(.system(size:24))
            .frame(maxWidth: .infinity, alignment: .trailing)
            .foregroundStyle(Color.gray))
    }
}

// Struct that populates the idea Stack with the ideas recollected
// in the ideation process
// TODO: MAKE THE BUTTON AND THE "LIKED" PROPERTY TO CHANGE ON TAP...
struct IdeaRowView: View {
    var idea: Ideas // variable for the object
    var body: some View{
        ZStack{
            VStack (alignment: .leading){
                Text("IDEA \(idea.ideaNumber)")
                    .bold()
                    .frame(alignment: .leading)
                ZStack{
                    HStack{
                        Button(action: {}){
                            HeartBtnView(liked: idea.liked)
                        }
                    }
                    .padding(.vertical, -16)
                }
                Text("\(idea.ideaDescription)")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            .padding(.bottom, -16)
        }
    }
}

// Main view
struct IdeaSelectView: View {
    
    var ideasViewModel = IdeaViewModel()
    
    var body: some View {
        NavigationStack{
            ScrollView{
                ForEach(ideasViewModel.ideas){idea in
                    // func call
                    IdeaRowView(idea: idea)
                }
                .navigationTitle("Idea Collection")
            }
            HStack (spacing: 10){
                Button(action: {}){
                    Text("Done")
                        .padding(.horizontal, 140)
                }
            }
            // Basic customization
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            .padding(.top, 12)
            .shadow(radius: 4)
            
        }
    }
}


#Preview {
    IdeaSelectView()
}
