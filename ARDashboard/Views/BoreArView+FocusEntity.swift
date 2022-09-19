//
//  BoreArView+FocusEntity.swift
//  ARDashboard
//
//  Created by lcy on 2022/9/15.
//

import FocusEntity

extension BoreArView: FocusEntityDelegate {
    
    func addFocusEntity() {
        let _ = FocusEntity(on: self, focus: .classic)
    }
    
    func toTrackingState() {
        print("DDD: tracking")
    }
    
    func toInitializingState() {
        print("DDD: initializing")
    }
}

