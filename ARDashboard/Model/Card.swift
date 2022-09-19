//
//  Card.swift
//  ARDashboard
//
//  Created by lcy on 2022/9/15.
//

import Foundation

struct Card {
    
    var id = UUID()
    var content: String
    
    init(content: String) {
        self.content = content
    }
    
}
