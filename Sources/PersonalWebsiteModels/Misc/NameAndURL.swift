//
//  NameAndURL.swift
//  App
//
//  Created by Jing Wei Li on 6/30/20.
//

import Foundation

public struct NameAndURL: Codable {
    let name: String
    let url: URL
    
    init?(project: Project) {
        guard let firstLink = project.links.first else {
            return nil
        }
        self.name = project.name
        self.url = firstLink.url
    }
    
    init?(graphic: GraphicProject) {
        guard let link = URL(string: graphic.projectURL) else {
            return nil
        }
        self.name = graphic.name
        self.url = link
    }
}
