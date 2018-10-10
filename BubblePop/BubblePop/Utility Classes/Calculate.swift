//
//  Calculate.swift
//  BubblePop
//
//  Created by Peter Bower on 11/4/18.
//  Copyright © 2018 Peter Bower. All rights reserved.
//

/* This set of functions are used to handle math related calculations */

import Foundation
import CoreGraphics

public func randomNoZeroToOne() -> Double {                                 //returns a random number between zero and one
    return Double(arc4random_uniform(UInt32.max)) / Double(UInt32.max)
}
                                                                            //randomPosition returns a random position within min/max boundaries and xy position offsets
public func randomPosition(xMax: Double, xOffset: Double, yMax: Double, yOffset: Double) -> CGPoint {
    let x = CGFloat(randomNoZeroToOne() * xMax + xOffset)
    let y = CGFloat(randomNoZeroToOne() * yMax + yOffset)
    let position = CGPoint(x: x,y: y)
    return position
}

public func randomSize(minSize: CGSize, maxSize: CGSize) -> CGSize {        //this position returns a random CGSize between minimum and maximum constraints
    let x = CGFloat(randomNoZeroToOne()) * maxSize.width + minSize.width
    let y = x
    let size = CGSize(width: x, height: y)
    return size
}
