//
//  PCSetupEntry.swift
//  App
//
//  Created by Jing Wei Li on 5/15/20.
//

import Foundation

public final class PCSetupEntry: Codable {
    var id: Int?
    let partName: String;
    let partDetail: String;
    let partPurchaseLink: String;

    init(name: String, detail: String, buyLink: String, id: Int? = nil) {
        self.id = id
        partName = name;
        partDetail = detail;
        partPurchaseLink = buyLink;
    }
}

#if canImport(Vapor) && canImport(FluentSQLite) && canImport(Routing)
import Vapor
import FluentSQLite
import Routing

extension PCSetupEntry: Model {
    typealias Database = SQLiteDatabase
    typealias ID = Int
    public static var idKey: IDKey = \PCSetupEntry.id
}

extension PCSetupEntry: Content {}

extension PCSetupEntry: Migration {}

extension PCSetupEntry: Parameter {}

#endif
