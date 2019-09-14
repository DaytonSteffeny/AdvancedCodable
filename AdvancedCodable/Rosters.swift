//
//  Roster.swift
//  AdvancedCodable
//
//  Created by Dayton Steffeny on 9/13/19.
//  Copyright © 2019 Dayton Steffeny. All rights reserved.
//

import Foundation

struct Rosters: Decodable{
    var rosters: [Roster]
    
    enum CodingKeys: String, CodingKey {
        case rosters
    }
}

struct Roster {
    var firstName: String
    var lastName: String
    var year: String
    var number: Double
    var position: String
    
    enum CodingKeys: String, CodingKey {
        case firstName
        case lastName
        case year
        case number
        case position
    }
    

}

extension Roster: Decodable {
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        firstName = try values.decode(String.self, forKey: .firstName)
        lastName = try values.decode(String.self, forKey: .lastName)
        year = try values.decode(String.self, forKey: .year)
        number = try values.decode(Double.self, forKey: .number)
        position = try values.decode(String.self, forKey: .position)
    }
}
