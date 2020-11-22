//
//  PCSetupEntry.swift
//  App
//
//  Created by Jing Wei Li on 5/15/20.
//

import Foundation

public final class PCSetupEntry: Codable {
    public var id: Int?
    public let partName: String;
    public let partDetail: String;
    public let partPurchaseLink: String;

    public init(name: String, detail: String, buyLink: String, id: Int? = nil) {
        self.id = id
        partName = name;
        partDetail = detail;
        partPurchaseLink = buyLink;
    }
}
