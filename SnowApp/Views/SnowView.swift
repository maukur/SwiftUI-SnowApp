//
//  SnowView.swift
//  SnowApp
//
//  Created by Artem Tischenko on 25/8/2022.
//

import SwiftUI
import SpriteKit

struct SnowView: View {
    var scene: SKScene {
        let scene = SnowScene()
        scene.backgroundColor = .clear
        scene.size = CGSize(width: 200, height: 200)
        scene.scaleMode =  .aspectFill
        return scene
    }

    var body: some View {
        SpriteView(scene: scene, options: [.allowsTransparency])
    }
}

fileprivate class SnowScene: SKScene {
    private enum Constants {
        static let maxSnowSize: CGFloat = 5
    }
    
    private let snowEmitterNode = SKEmitterNode(fileNamed: "Snow.sks")

    override func didMove(to view: SKView) {
        guard let snowEmitterNode = snowEmitterNode else { return }
        addChild(snowEmitterNode)
    }

    override func didChangeSize(_ oldSize: CGSize) {
        guard let snowEmitterNode = snowEmitterNode else { return }
        snowEmitterNode.particlePosition = CGPoint(x: size.width/2, y: size.height + Constants.maxSnowSize)
    }
}
