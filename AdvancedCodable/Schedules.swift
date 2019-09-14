//
//  Schedule.swift
//  AdvancedCodable
//
//  Created by Dayton Steffeny on 9/13/19.
//  Copyright © 2019 Dayton Steffeny. All rights reserved.
//

import Foundation

struct Schedules: Decodable {
    var schedules = [Schedule]()
    
    enum CodingKeys: String, CodingKey {
        case schedules
    }
}

struct Schedule{
    var team: String
    var date: String
    var time: String
    var location: String
    
    enum CodingKeys: String, CodingKey {
        case team
        case date
        case time
        case location
    }
}

extension Schedule: Decodable {
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        team = try values.decode(String.self, forKey: .team)
        date = try values.decode(String.self, forKey: .date)
        time = try values.decode(String.self, forKey: .time)
        location = try values.decode(String.self, forKey: .location)
        }
}
