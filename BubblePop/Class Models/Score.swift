//
//  Score.swift
//  BubblePop
//
//  Created by Peter Bower on 11/4/18.
//  Copyright © 2018 Peter Bower. All rights reserved.
//

/* Score is used to create objects that associate a player to a game score. Though a dictionary could have been used,
 this version is easily extensible so information such as a date/time can easily be added in future */

import Foundation

class Score: Codable {
    
    var playerName: String
    var score: Int
    
    init(playerName: String, score: Int) {
        self.playerName = playerName
        self.score = score
    }
    
}
