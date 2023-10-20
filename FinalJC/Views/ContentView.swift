//
//  ContentView.swift
//  JustCodersI
//
//  Created by Axel Amós Hernández Cárdenas on 17/10/23.
//

import SwiftUI



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


struct ContentView: View {

    // Search bar variable for text lookup
    @State private var searchText: String = ""
    @State private var showModalView = false
    @State private var showCreateRoom = false
    @State private var showJoinRoom = false
    
    // Variable for data display of projects
    var projectViewModel = ProjectViewModel()
    var mymodelview = CustomModalView()
    
    var body: some View {
       // Navigation Stack for "Your Projects, SearchBar & Edit)
        NavigationStack{
            // HStack for Modal Button
            HStack (spacing: 10){
                
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
            }
            .sheet(isPresented: $showModalView) {
                CustomModalView()
                    .presentationDetents([.height(170)])
                
            }
            
            List{
                ForEach(projectViewModel.projectsConst){project in
                    NavigationLink(destination: ProjectDetail(project: project)) {
                        ProjectRowView(project: project)
                    }
                }                .listRowSeparator(.hidden)
               
            }
            .navigationTitle("Your Projects 😎")
            .scrollContentBackground(.hidden)
            .toolbar{
                EditButton()
            }
            .searchable(text: $searchText)
        }
    }
}








#Preview {
    ContentView()
}
