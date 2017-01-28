//
//  MutableCollection+Ext.swift
//  TacoPOP
//
//  Created by Sara Henriksen on 28/01/2017.
//  Copyright © 2017 Alexander Steen. All rights reserved.
//

import Foundation

extension MutableCollection where Index == Int {
    mutating func shuffle() {
        if(count < 2){ return }
        
        for i in startIndex ..< endIndex - 1 {
            let j = Int(arc4random_uniform(UInt32(endIndex - i))) + i
            guard j != i else { continue }
            swap(&self[i], &self[j])
        }
    }
}
