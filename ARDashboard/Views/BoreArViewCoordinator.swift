//
//  BoreArViewCoordinator.swift
//  ARDashboard
//
//  Created by lcy on 2022/9/15.
//


import SwiftUI
import UIKit

// 这里负责处理需要从UIKit传递给SwiftUI的信息
class BoreArViewCoordinator: NSObject, BoreArViewDelegate {
    
    func hasLocateWorldOrigin(located: Bool) {
        // TODO: code
    }
    
    
    var container: BoreARViewContainer
    
    init(_ container: BoreARViewContainer) {
        self.container = container
    }
    
}
