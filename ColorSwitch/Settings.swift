//
//  Settings.swift
//  ColorSwitch
//
//  Created by sinbad on 6/13/19.
//  Copyright © 2019 sinbad. All rights reserved.
//

import SpriteKit

enum PhysicsCategories {
    static let none : UInt32 = 0
    static let ballCategory : UInt32 = 0x1        // 01
    static let switchCategory : UInt32 = 0x1 << 1 // 10
}
