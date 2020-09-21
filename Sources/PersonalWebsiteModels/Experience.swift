//
//  Experience.swift
//  App
//
//  Created by Jing Wei Li on 6/20/20.
//

import Foundation

public final class Experience: Codable {
    var id: Int?
    let imageLink: String
    let position: String
    let time: String
    let company: String
    let accomplishments: [String]
    let special: String?
}

#if canImport(Vapor) && canImport(FluentSQLite) && canImport(Routing)
import Vapor
import FluentSQLite
import Routing

extension Experience: Model {
    typealias Database = SQLiteDatabase
    typealias ID = Int
    public static var idKey: IDKey = \Experience.id
}

extension Experience: Content, Migration, Parameter {
    
}

#endif
