//
//  BoreArView.swift
//  ARDashboard
//
//  Created by lcy on 2022/9/15.
//


import RealityKit
import RealityUI
import FocusEntity
import Combine
import ARKit

class BoreArView: ARView {
    
    var delegate: BoreArViewDelegate?
    // 已经按定位世界中心了（图片探测）
    var hasLocateWorldOrigin = false
    
    var defaultConfiguration: ARWorldTrackingConfiguration {
        let config = ARWorldTrackingConfiguration()
        config.planeDetection = [.horizontal]
        return config
    }
    
    required init(frame frameRect: CGRect) {
        super.init(frame: frameRect)
        
        self.session.delegate = self
        self.session.run(defaultConfiguration)
        
        // debug模式显示AR识别信息
        debugOptions = [
             .showWorldOrigin, // 显示世界坐标系原点位置和坐标轴
        ]
    }
    
    @MainActor required dynamic init?(coder decoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

