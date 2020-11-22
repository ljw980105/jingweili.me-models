//
//  Experience.swift
//  App
//
//  Created by Jing Wei Li on 6/20/20.
//

import Foundation

public final class Experience: Codable {
    public var id: Int?
    public let imageLink: String
    public let position: String
    public let time: String
    public let company: String
    public let accomplishments: [String]
    public let special: String?
}
