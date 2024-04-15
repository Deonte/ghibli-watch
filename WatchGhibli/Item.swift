//
//  Item.swift
//  WatchGhibli
//
//  Created by Deonte Kilgore on 4/15/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}