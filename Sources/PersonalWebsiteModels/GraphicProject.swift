//
//  GraphicProject.swift
//  App
//
//  Created by Jing Wei Li on 6/2/20.
//

import Foundation

public final class GraphicProject: Codable {
    var id: Int?
    let name: String
    let description: String
    let imageURLRectangle: String
    let imageURLSquare: String
    let projectURL: String
}

#if canImport(Vapor) && canImport(FluentSQLite)
import Vapor
import FluentSQLite

extension GraphicProject: Model {
    typealias Database = SQLiteDatabase
    typealias ID = Int
    public static var idKey: IDKey = \GraphicProject.id
}

extension GraphicProject: Content {}

extension GraphicProject: Migration {}

extension GraphicProject: Parameter {}

#endif
