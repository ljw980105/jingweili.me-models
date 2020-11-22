//
//  BeatslyticsData.swift
//  App
//
//  Created by Jing Wei Li on 6/28/20.
//

import Foundation

public final class BeatslyticsData: Codable {
    public var id: Int?
    public let metaAppStoreName: String
    public let metaAppStoreContent: String
    public let headline: String
    public let intro: String
    public let appStore: String
    public let features: [GenericFeature]
    public let support: String;
    public let license_agreement_url: String
    public let privacy_policy_url: String
    public let credits: GenericFeature
}
