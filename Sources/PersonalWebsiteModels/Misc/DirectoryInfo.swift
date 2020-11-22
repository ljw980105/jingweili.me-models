//
//  DirectoryInfo.swift
//  App
//
//  Created by Jing Wei Li on 11/14/20.
//

import Foundation

private let resourceKeys: [URLResourceKey] = [.volumeTotalCapacityKey, .volumeAvailableCapacityKey]

public struct DirectoryInfo: Codable {
    let totalCapacity: Int64?
    let availableCapacity: Int64?
    let usedCapacity: Int64?
    
    init(url: URL) throws {
        #if os(macOS)
        let resourceValues = try url.resourceValues(forKeys: Set(resourceKeys)).allValues
        totalCapacity = resourceValues[.volumeTotalCapacityKey] as? Int64
        availableCapacity = resourceValues[.volumeAvailableCapacityKey] as? Int64
        if let total = totalCapacity, let available = availableCapacity {
            usedCapacity = total - available
        } else {
            usedCapacity = nil
        }
        #else
        totalCapacity = 0
        availableCapacity = 0
        usedCapacity = 0
        #endif
    }
}
