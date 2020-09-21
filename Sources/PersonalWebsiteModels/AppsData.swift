//
//  AppsData.swift
//  App
//
//  Created by Jing Wei Li on 6/26/20.
//

import Foundation

public final class AppsData: Codable {
    var id: Int?
    let apps: [AppsOrSkill]
    let skills: [AppsOrSkill]
}

public final class AppsOrSkill: Codable {
    let imageLink: String
    let name: String
    let description: String
    let description2: String?
    let linkTitle: String?
    let link: String?
}

#if canImport(Vapor) && canImport(FluentSQLite)
import Vapor
import VaporSQLite

extension AppsData: Model {
    typealias Database = SQLiteDatabase
    typealias ID = Int
    public static var idKey: IDKey = \AppsData.id
}

extension AppsOrSkill: Content {}

extension AppsData: Content, Migration, Parameter {
    
}

#endif

