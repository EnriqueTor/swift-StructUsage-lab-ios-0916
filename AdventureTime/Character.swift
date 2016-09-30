//
//  Character.swift
//  AdventureTime
//
//  Created by James Campagno on 9/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation
import UIKit

struct Character {
    let name: String
    let species: String
    let occupation: String
    var powerLevel: Double
    var killedEnemies: Int = 0
    var bestFriend: String = ""
    
    
    init(name: String, species: String, occupation: String, powerLevel: Double) {
        self.name = name
        self.species = species
        self.occupation = occupation
        self.powerLevel = powerLevel
    }
    
    mutating func fight(enemy: Character) {
        if powerLevel > enemy.powerLevel {
         killedEnemies += 1
            powerLevel += 10
        } else if powerLevel < enemy.powerLevel {
            powerLevel -= 10
        }
    }
    
    mutating func becomeBestFriends(with friend: String) {
        bestFriend = friend
    }
    
    func displayImage() -> UIImage {
        
        switch name {
        case "Finn The Human":
            return UIImage(named: "Finn")!
        case "Jake The Dog":
            return UIImage(named: "JakeTheDog")!
        case "Princess Bubblegum":
            return UIImage(named: "PrincessBubblegum")!
        case "Lemongrab":
            return UIImage(named: "Lemongrab")!
        case "BMO":
            return UIImage(named: "BMO")!
        case "Lumpy Space Princess":
            return UIImage(named: "LumpySpacePrincess")!
        default:
            return UIImage()
        }
                
    }
}
