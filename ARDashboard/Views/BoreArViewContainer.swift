//
//  BoreArViewContainer.swift
//  ARDashboard
//
//  Created by lcy on 2022/9/15.
//


import SwiftUI
import RealityKit
import ARKit

struct BoreARViewContainer: UIViewRepresentable {
    
    @EnvironmentObject var modelData: ModelData
    
    func makeUIView(context: Context) -> ARView {
        let arView = BoreArView(frame: .zero)
        arView.addCoaching()
        // arView.setupGesture()
        arView.delegate = context.coordinator
        return arView
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {
        print("DDD: updateUIView")
        
        guard let arView = uiView as? BoreArView else {
            return
        }
        
        for data in modelData.cardList {
            if !data.isAnchored {
                // 未添加进场景的，加入之
                data.append2ar(arView)
            }
        }
        
    }
    
    func makeCoordinator() -> BoreArViewCoordinator {
        return BoreArViewCoordinator(self)
    }

    // MARK: - Move
    var startMoveTransform: float4x4?
    
}
