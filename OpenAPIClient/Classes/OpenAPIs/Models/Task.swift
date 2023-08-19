//
// Task.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Task: Codable, JSONEncodable, Hashable {

    public enum Feedback: String, Codable, CaseIterable {
        case onTime = "on_time"
        case earlier = "earlier"
        case later = "later"
    }
    /** ID da tarefa. */
    public var id: String?
    /** Descrição da tarefa. */
    public var description: String
    /** Data em que a tarefa foi realizada. */
    public var date: Date
    /** Feedback sobre a realização da tarefa. */
    public var feedback: Feedback?

    public init(id: String? = nil, description: String, date: Date, feedback: Feedback? = nil) {
        self.id = id
        self.description = description
        self.date = date
        self.feedback = feedback
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case description
        case date
        case feedback
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encode(description, forKey: .description)
        try container.encode(date, forKey: .date)
        try container.encodeIfPresent(feedback, forKey: .feedback)
    }
}

