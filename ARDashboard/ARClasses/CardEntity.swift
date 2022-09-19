//
//  CardEntity.swift
//  ARDashboard
//
//  Created by lcy on 2022/9/16.
//

import Foundation
import RealityKit

class CardEntity: Entity {

    // 卡片内容
    var content: String
    
    init(content: String) {
        self.content = content
        super.init()
    }
    
    required init() {
        fatalError("init() has not been implemented")
    }
    
    func append2ar(_ arView: BoreArView) {
        initModel()
        initAnchor(arView.cameraTransform.matrix)
        arView.scene.addAnchor(self)
    }
}

// 有实体渲染
extension CardEntity: HasModel, HasCollision {
    
    func initModel() {
        let mesh = MeshResource.generateBox(width: 0.2, height: 0.15, depth: 0.01)
        let material = SimpleMaterial(color: .white, isMetallic: false)
        model = ModelComponent(mesh: mesh, materials: [material])
        generateCollisionShapes(recursive: true)
    }
    
}

// 可以直接添加到场景
extension CardEntity: HasAnchoring {

    func initAnchor(_ transform: float4x4) {
        anchoring = AnchoringComponent(AnchoringComponent.Target.world(transform: transform))
    }
    
}
