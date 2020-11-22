//
//  AppsData.swift
//  App
//
//  Created by Jing Wei Li on 6/26/20.
//

import Foundation

public final class AppsData: Codable {
    public var id: Int?
    public let apps: [AppsOrSkill]
    public let skills: [AppsOrSkill]
}

public final class AppsOrSkill: Codable {
    public let imageLink: String
    public let name: String
    public let description: String
    public let description2: String?
    public let linkTitle: String?
    public let link: String?
}
