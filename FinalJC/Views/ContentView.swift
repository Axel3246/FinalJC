//
//  ContentView.swift
//  JustCodersI
//
//  Created by Axel Amós Hernández Cárdenas on 17/10/23.
//

import SwiftUI

struct ContentView: View {
    
    // Search bar variable for text lookup

    // var projectViewModel = ProjectViewModel()
    @State private var projects = ProjectViewModel()
    @State private var searchText = ""
    @State private var showModalView = false
    @State private var showCreateRoom = false
    @State private var showJoinRoom = false
    
    // Variable for data display of projects
    var projectViewModel = ProjectViewModel()
    var mymodelview = CustomModalView()
    
    var body: some View {
        // Navigation Stack for "Your Projects, SearchBar & Edit)
        NavigationStack{
            SearchBar(text: $searchText)
            // HStack for Modal Button
            
            
            Button{
                showModalView.toggle()
            }label: {
                Text("\(Image(systemName: "plus.circle.fill")) New Project")
                    .padding(.horizontal, 100)
            }
            // Basic customization
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            .padding(.bottom, -27)
            
            .sheet(isPresented: $showModalView) {
                CustomModalView()
                    .presentationDetents([.height(170)])
                
            }
            
            List {
                ForEach(projects.projectsConst.filter { searchText.isEmpty ? true : $0.projectTitle.localizedCaseInsensitiveContains(searchText) }) { project in
                    NavigationLink(destination: ProjectDetailView(project: project)) {
                        ProjectRowView(project: project)
                    }
                }
            }
            .navigationTitle("Projects")
            .padding(.vertical, -7)
            
            
            .navigationTitle("Your Projects 😎")
            .scrollContentBackground(.hidden)
            .toolbar{
                EditButton()
            }
        }
    
    }
}



// Struct that populates the list with the projects currently
// available in the class [Project] data...
struct ProjectRowView: View{
    var project: Project
    
    var body: some View{
        VStack{
            Text("\(project.projectTitle)\n\(Text(project.projectDate).foregroundStyle(.secondary).font(.subheadline))")
        }
        .padding(.vertical, 8)
    }
}


struct SearchBar: View {
    @Binding var text: String
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            TextField("Search", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
        .padding()
    }
}



#Preview {
    
    ContentView()
    
    
}
