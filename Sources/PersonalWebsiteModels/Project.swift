//
//  Project.swift
//  App
//
//  Created by Jing Wei Li on 6/15/20.
//

import Foundation

public final class Project: Codable {
    var id: Int?
    let imageUrl: String
    let name: String
    let description: String
    let links: [ProjectLink]
    let technologies: [String]
}

public final class ProjectLink: Codable {
    let name: String
    let url: URL
}

