//
//  ViewController.swift
//  AdvancedCodable
//
//  Created by Dayton Steffeny on 9/13/19.
//  Copyright © 2019 Dayton Steffeny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var rosterArray = [Roster]()
    var scheduleArray = [Schedule]()
    var nflplayerArray = [NFLPlayer]()
    

    @IBOutlet weak var informTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        informTextView.text = ""
        
        if let rosters = JSONLoads.loadRosters(jsonFileName: "rosters") {
            for roster in rosters.rosters {
                rosterArray.append(roster)
            }
        } else {
            print("Could not load roster.json")
        }
        
        if let schedules  = JSONLoads.loadSchedules(jsonFileName: "schedules") {
            for schedule in schedules.schedules {
                scheduleArray.append(schedule)
            }
        } else {
            print("Could not load schedule.json")
        }
        
        if let nflplayers = JSONLoads.loadNFLPlayers(jsonFileName: "nflplayers") {
            for nflplayer in nflplayers.nflplayers {
                nflplayerArray.append(nflplayer)
            }
        } else {
            print("Could not load nflplayers.json")
        }
    }
    
    
    @IBAction func scheduleButtonClick(_ sender: Any){
        informTextView.text = ""
        for schedule in scheduleArray {
            informTextView.text.append("Team: " + schedule.team)
            informTextView.text.append("\nDate: " + schedule.date)
            informTextView.text.append("\nTime: " + schedule.time)
            informTextView.text.append("\nLocation: " + schedule.location)
        }
    }

        
        @IBAction func rosterButtonClick(_ sender: Any) {
        informTextView.text = ""
        for roster in rosterArray {
            informTextView.text.append("Name: " + roster.firstName + " " + roster.lastName)
            informTextView.text.append("\nYear: " + roster.year)
            informTextView.text.append("\nNumber: " + String(roster.number))
            informTextView.text.append("\nPosition: " + roster.position)
            }
    }
        
    @IBAction func nflplayerButtonClick(_ sender: Any) {
        informTextView.text = ""
        for nflplayer in nflplayerArray {
            informTextView.text.append("Name: " + nflplayer.firstName + " " + nflplayer.lastName)
            informTextView.text.append("\nTeam: " + nflplayer.team)
            informTextView.text.append("\nAge: " + String(nflplayer.age))
            informTextView.text.append("\nYears in NFL: " + String(nflplayer.yearsNFL))
        }
    }

}

