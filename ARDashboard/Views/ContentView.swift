//
//  ContentView.swift
//  ARDashboard
//
//  Created by lcy on 2022/9/15.
//

import SwiftUI
import RealityKit
import RealityUI

struct ContentView : View {
    
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        ZStack {
            BoreARViewContainer().edgesIgnoringSafeArea(.all)

            Button("添加") {
                modelData.cardList.append(CardEntity(content: "卡片"))
            }
        }
    }
}
