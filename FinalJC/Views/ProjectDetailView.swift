//
//  ProjectDetail.swift
//  JustCodersI
//
//  Created by Axel Amós Hernández Cárdenas on 17/10/23.
//

import SwiftUI

struct ProjectDetail: View {
    
    var project: Project
    
    var body: some View {
        ZStack{
            NavigationStack{
                HStack {
                    Text(project.projectTitle)
                        .foregroundStyle(.primary)
                }
                HStack{
                    Text(project.projectDate)
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }
                
            }
            .navigationTitle(project.projectTitle)
            // Toolbar to track individual items
        }
    }
}

#Preview {
    let currProject = Project(projectTitle: "Taco Night Options")
    return ProjectDetail(project: currProject)
}
