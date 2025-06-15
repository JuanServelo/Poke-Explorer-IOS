//
//  Item.swift
//  PokéExplorer
//
//  Created by user276508 on 14/06/25.
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
