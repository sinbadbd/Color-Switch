//
//  MenuScene.swift
//  ColorSwitch
//
//  Created by sinbad on 6/13/19.
//  Copyright © 2019 sinbad. All rights reserved.
//

import SpriteKit

class MenuScene : SKScene {
    override func didMove(to view: SKView) {
        backgroundColor = UIColor(red: 44/255, green: 62/255, blue: 80/255, alpha: 1.0)
        addLogo()
        addLabels()
    }
    
    func addLogo(){
        
        let logo = SKSpriteNode(imageNamed: "logo")
        logo.size = CGSize(width: frame.size.width / 4, height: frame.size.width/4)
        logo.position = CGPoint(x: frame.midX, y: frame.midY + frame.size.height/4)
        addChild(logo)
    }
    
    func addLabels(){
        let playLabel = SKLabelNode(text: "Tap to Play")
        playLabel.fontName = "AvenirNext-Bold"
        playLabel.fontSize = 50.0
        playLabel.fontColor = UIColor.white
        playLabel.position = CGPoint(x: frame.midX, y: frame.midY)
        addChild(playLabel)
        animate(label: playLabel)
        
        let highscoreLabel = SKLabelNode(text: "Highscore:  \(UserDefaults.standard.integer(forKey: "Highscore"))")
        highscoreLabel.fontName = "AvenirNext-Bold"
        highscoreLabel.fontSize = 40.0
        highscoreLabel.fontColor = UIColor.white
        highscoreLabel.position = CGPoint(x: frame.midX, y: frame.midY - highscoreLabel.frame.size.height*4)
        addChild(highscoreLabel)
        
        
        let recentScore = SKLabelNode(text: "Recent Score: \(UserDefaults.standard.integer(forKey: "RecentScore"))")
        recentScore.fontName = "AvenirNext-Bold"
        recentScore.fontSize = 50.0
        recentScore.fontColor = UIColor.white
        recentScore.position = CGPoint(x: frame.midX, y: highscoreLabel.position.y - recentScore.frame.size.height * 2)
        addChild(recentScore)
        
    }
    
    func animate(label : SKLabelNode) {
      //  let fadOut = SKAction.fadeOut(withDuration: 0.5)
       // let fadIn = SKAction.fadeIn(withDuration: 0.5)
        
        let fadOut = SKAction.scale(to: 1.1, duration: 0.5)
        let fadIn = SKAction.scale(to: 1.0, duration: 0.5)
        
        let sequence = SKAction.sequence([fadOut, fadIn])
        label.run(SKAction.repeatForever(sequence))
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let gameScene = GameScene(size: view!.bounds.size)
        view!.presentScene(gameScene)
    }
    
}
