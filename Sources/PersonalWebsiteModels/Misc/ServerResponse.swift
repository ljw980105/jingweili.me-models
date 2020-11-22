//
//  ServerResponse.swift
//  App
//
//  Created by Jing Wei Li on 5/15/20.
//

import Foundation

public struct ServerResponse: Codable {
    let success: Bool
    let message: String
    
    static let defaultSuccess: ServerResponse = {
        return ServerResponse(success: true, message: "success")
    }()
    
    static func errorFrom(_ error: Error) -> ServerResponse {
        return ServerResponse(success: false, message: error.localizedDescription)
    }
}
