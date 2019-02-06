//
//  Card.swift
//  Hapy_Back_Jack
//
//  Created by nhp on 2/6/19.
//  Copyright © 2019 nhp. All rights reserved.
//

import Foundation

class Card {
    let suit = ["clubs","spades","diamonds","hearts"]
    let face = ["2","3","4","5","6","7","8","9","10","ace","jack","queen","king"]
    var deck = [String](repeating: "0", count: 52)
    
    func shuffle() -> [String] {
        var result = [String]()
        for i in 0...12 {
            for j in 0...3{
                let index = Int(j*13+i)
                let card = self.face[i] + "_of_" + self.suit[j]
                deck[index] = card
            }
        }
        
        for _ in 1...52 {
            let size = UInt32(deck.count)
            let random = Int(arc4random_uniform(size) + 0)
            result.append(deck[random])
            deck.remove(at: random)
            
        }
        return result
    }
}
