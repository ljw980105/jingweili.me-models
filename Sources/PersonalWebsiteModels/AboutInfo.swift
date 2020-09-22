//
//  AboutInfo.swift
//  App
//
//  Created by Jing Wei Li on 6/8/20.
//

import Foundation

public final class AboutInfo: Codable {
    var id: Int?
    let content: String
    let imageUrl: String
}

#if canImport(Vapor) && canImport(FluentSQLite) && canImport(Routing)
import Vapor
import FluentSQLite
import Routing

extension AboutInfo: Model {
    public typealias Database = SQLiteDatabase
    public typealias ID = Int
    public static var idKey: IDKey = \AboutInfo.id
}

extension AboutInfo: Content, Migration, Parameter {
    
}

#endif

