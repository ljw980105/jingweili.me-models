//
//  UploadedFile.swift
//  App
//
//  Created by Jing Wei Li on 5/28/20.
//

import Foundation

public struct UploadedFile: Codable {
    public let file: Data
    public let name: String
}
