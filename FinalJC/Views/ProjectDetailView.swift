//
//  ProjectDetail.swift
//  JustCodersI
//
//  Created by Axel Amós Hernández Cárdenas on 17/10/23.
//



import SwiftUI



struct ProjectDetailView: View {
    var project: Project
    var detailViewModel = ProjectDetailViewModel()
    
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading) {
                Text("Your favourite ideas:")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                
                ForEach(detailViewModel.details) { detail in
                    ForEach(detail.favouriteIdeaArray, id: \.self) { favoriteIdea in
                        Text("\(favoriteIdea)")
                            .font(.body)
                            .fontWeight(.semibold)
                    }
                }
                .padding()
                
                Text("Others' ideas:")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding()
                
                
                ForEach(detailViewModel.details) { detail in
                    ForEach(detail.otherIdeaArray, id: \.self) { favoriteIdea in
                        Text("\(favoriteIdea)")
                            .font(.body)
                            .fontWeight(.semibold)
                    }
                    
                }
                .padding()
            }
            .padding(.bottom, 200)
            .padding(.trailing, 90)
            .navigationTitle("\(project.projectTitle) \(project.projectDate)")
            
            
        }
    }
}
#Preview {
    let project = Project(projectTitle: "Forza Napoli", projectDate: "13/07/00")
    return ProjectDetailView(project: project)
}
