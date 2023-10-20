//
//  ProjectDetail.swift
//  Project List
//
//  Created by Lorenzo Overa on 18/10/23.
//

import Foundation

struct ProjectDetail: Identifiable{
    var id = UUID()
    var favouriteIdeaArray: [String]
    var otherIdeaArray: [String]
    var ideaTitle: String
}
