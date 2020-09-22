//
//  ResumeData.swift
//  App
//
//  Created by Jing Wei Li on 6/24/20.
//

import Foundation

public final class ResumeData: Codable {
    var id: Int?
    let appsWorkedOn: Int
    let commercialAppsWorkedOn: Int
    let appsPublished: Int
    let iosSkills: [GenericFeature]
    let webSkillsFrontend: [TextAndImage]
    let webSkillsBackend: [TextAndImage]
    let webSkillsGeneral: [TextAndImage]
    let graphicSkills: [GenericFeature]
}

public final class GenericFeature: Codable {
    let name: String
    let details: [String]
}

public final class TextAndImage: Codable {
    let imageUrl: String
    let text: String
}

#if canImport(Vapor) && canImport(FluentSQLite) && canImport(Routing)
import Vapor
import FluentSQLite
import Routing

extension GenericFeature: Content {}

extension TextAndImage: Content {}

extension ResumeData: Model {
    public typealias Database = SQLiteDatabase
    public typealias ID = Int
    public static var idKey: IDKey = \ResumeData.id
}

extension ResumeData: Content, Migration, Parameter {
    
}

#endif

