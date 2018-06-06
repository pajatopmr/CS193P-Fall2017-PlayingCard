//
//  PlayingCardDeck.swift
//  PlayingCard
//
//  Created by Paul Michael Reilly on 6/6/18.
//  Copyright © 2018 Pajato Technologies. All rights reserved.
//

import Foundation

struct PlayingCardDeck {

    private(set) var cards = [PlayingCard]()
    
    init() {
        for suit in PlayingCard.Suit.all {
            for rank in PlayingCard.Rank.all {
                cards.append(PlayingCard(suit: suit, rank: rank))
            }
        }
    }
    mutating func draw() -> PlayingCard? {
        if cards.count > 0 {
            return cards.remove(at: cards.count.arc4random)
        } else {
            return nil
        }
    }
}

extension Int {
    var arc4random: Int {
        // Generate a random value between 0 and the int value (half open) of the correct sign.  For 0, return 0.
        switch self {
        case 0 : return 0;
        default: return self > 0 ? Int(arc4random_uniform(UInt32(self))) : -Int(arc4random_uniform(UInt32(abs(self))))
        }
    }
}
