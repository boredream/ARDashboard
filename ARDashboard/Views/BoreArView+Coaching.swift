//
//  BoreArView+Coaching.swift
//  ARDashboard
//
//  Created by lcy on 2022/9/15.
//

import ARKit
import UIKit

extension BoreArView: ARCoachingOverlayViewDelegate {
    
    func addCoaching() {
        let coachingOverlay = ARCoachingOverlayView()
        coachingOverlay.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        coachingOverlay.goal = .horizontalPlane
        coachingOverlay.session = self.session
        coachingOverlay.delegate = self
        self.addSubview(coachingOverlay)
    }
    
}
