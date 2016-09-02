import SpriteKit

class Explosion: Sprite {
    required init(x: CGFloat, y: CGFloat) {
        super.init(named: "shockwave", x: x, y: y)
    }

    func boom(main: GameScene) {
        let explode = SKEmitterNode(fileNamed: "Explode.sks")
        self.addChild(explode!)
        self.run(
        SKAction.sequence([
                SKAction.scale(by: 7, duration: 0.5),
                SKAction.run({ main.removeAliens = true }),
                SKAction.fadeAlpha(by: -0.9, duration: 0.6),
                SKAction.removeFromParent()
        ])
        )
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
