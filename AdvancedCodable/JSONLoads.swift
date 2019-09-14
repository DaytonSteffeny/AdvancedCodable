//
//  JSONLoads.swift
//  AdvancedCodable
//
//  Created by Dayton Steffeny on 9/13/19.
//  Copyright © 2019 Dayton Steffeny. All rights reserved.
//

import Foundation

class JSONLoads {
    class func loadRosters(jsonFileName: String) -> Rosters? {
        var rosters: Rosters?
        let jsonDecoder = JSONDecoder()
        
        if let jsonFileURL = Bundle.main.url(forResource: jsonFileName, withExtension: ".json"),
            let jsonData = try? Data(contentsOf: jsonFileURL) {
            rosters = try? jsonDecoder.decode(Rosters.self, from: jsonData)
        } else {
            print("JSON file not found.")
        }
        
        return rosters
    }
    
    class func loadSchedules(jsonFileName: String) -> Schedules? {
        var schedules: Schedules?
        let jsonDecoder = JSONDecoder()
        
        if let jsonFileURL = Bundle.main.url(forResource: jsonFileName, withExtension: ".json"),
            let jsonData = try? Data(contentsOf: jsonFileURL) {
            schedules = try? jsonDecoder.decode(Schedules.self, from: jsonData)
        } else {
            print("JSON file not found.")
        }
        
        return schedules
    }
    
    class func loadNFLPlayers(jsonFileName: String) -> NFLplayers? {
        var nflplayers: NFLplayers?
        let jsonDecoder = JSONDecoder()
        
        if let jsonFileURL = Bundle.main.url(forResource: jsonFileName, withExtension: ".json"),
            let jsonData = try? Data(contentsOf: jsonFileURL) {
            nflplayers = try? jsonDecoder.decode(NFLplayers.self, from: jsonData)
        } else {
            print("JSON file not found.")
        }
        
        return nflplayers
    }
}


