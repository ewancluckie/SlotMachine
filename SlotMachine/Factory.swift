//
//  Factory.swift
//  SlotMachine
//
//  Created by Ewan Cluckie on 10/05/2015.
//  Copyright (c) 2015 Ewan Cluckie. All rights reserved.
//

import Foundation
import UIKit

class Factory {
    
    class func createSlots() -> [[Slot]] {
        
        let kNumberOfSlots = 3
        let kNumberOfContainers = 3
        var slots: [[Slot]] = []
        
        for var containerNumber = 0; containerNumber < kNumberOfContainers; ++containerNumber {
            
            var slotArray: [Slot] = []
            
            for var slotNumber = 0; slotNumber < kNumberOfSlots; ++slotNumber {
                
                var slot = Slot(value: 0, image: UIImage(named: ""), isRed: true)
                slotArray.append(slot)
                
            }
            
            slots.append(slotArray)
            
        }
        
        return slots
    
    }
    
}



class func createSlot (currentCards: [Slot]) -> Slot {
    
    var currentCardValues: [Int] = []
    
    for Slot in currentCards {
        
        currentCardValues.append(Slot.value)
        
    }
    
    var randomNumber = Int(arc4random_uniform(UInt32(13)))
    while contains(currentCardValues, randomNumber + 1) {
        randomNumber = Int(arc4random_uniform(UInt32(13)))
    }
    
}