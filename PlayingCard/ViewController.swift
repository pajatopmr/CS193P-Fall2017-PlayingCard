//
//  ViewController.swift
//  PlayingCard
//
//  Created by Paul Michael Reilly on 6/6/18.
//  Copyright © 2018 Pajato Technologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var deck = PlayingCardDeck()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for _ in 1...10 {
            if let card = deck.draw() {
                print("\(card)")
            }
        }
    }

}

