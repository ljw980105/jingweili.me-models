//
//  ResumeData.swift
//  App
//
//  Created by Jing Wei Li on 6/24/20.
//

import Foundation

public final class ResumeData: Codable {
    public var id: Int?
    public let appsWorkedOn: Int
    public let commercialAppsWorkedOn: Int
    public let appsPublished: Int
    public let iosSkills: [GenericFeature]
    public let webSkillsFrontend: [TextAndImage]
    public let webSkillsBackend: [TextAndImage]
    public let webSkillsGeneral: [TextAndImage]
    public let graphicSkills: [GenericFeature]
}

public final class GenericFeature: Codable {
    public let name: String
    public let details: [String]
}

public final class TextAndImage: Codable {
    public let imageUrl: String
    public let text: String
}
