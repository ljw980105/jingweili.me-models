//
//  Project.swift
//  App
//
//  Created by Jing Wei Li on 6/15/20.
//

import Foundation

public final class Project: Codable {
    public var id: Int?
    public let imageUrl: String
    public let name: String
    public let description: String
    public let links: [ProjectLink]
    public let technologies: [String]
}

public final class ProjectLink: Codable {
    let name: String
    let url: URL
}

