//
//  NFL.swift
//  AdvancedCodable
//
//  Created by Dayton Steffeny on 9/13/19.
//  Copyright © 2019 Dayton Steffeny. All rights reserved.
//

import Foundation

struct NFLplayers: Decodable{
    var nflplayers: [NFLPlayer]
    
    enum CodingKeys: String, CodingKey {
        case nflplayers
    }
}

struct NFLPlayer {
    var firstName: String
    var lastName: String
    var team: String
    var age: Double
    var yearsNFL: Double
    
    enum CodingKeys: String, CodingKey {
        case firstName
        case lastName
        case team
        case age
        case yearsNFL
    }
    

}

extension NFLPlayer: Decodable {
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        firstName = try values.decode(String.self, forKey: .firstName)
        lastName = try values.decode(String.self, forKey: .lastName)
        team = try values.decode(String.self, forKey: .team)
        age = try values.decode(Double.self, forKey: .age)
        yearsNFL = try values.decode(Double.self, forKey: .yearsNFL)
    }
}
