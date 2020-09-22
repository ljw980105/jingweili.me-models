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
