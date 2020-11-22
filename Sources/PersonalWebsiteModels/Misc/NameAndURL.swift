//
//  NameAndURL.swift
//  App
//
//  Created by Jing Wei Li on 6/30/20.
//

import Foundation

public struct NameAndURL: Codable {
    public let name: String
    public let url: URL
    
    public init?(project: Project) {
        guard let firstLink = project.links.first else {
            return nil
        }
        self.name = project.name
        self.url = firstLink.url
    }
    
    public init?(graphic: GraphicProject) {
        guard let link = URL(string: graphic.projectURL) else {
            return nil
        }
        self.name = graphic.name
        self.url = link
    }
}
