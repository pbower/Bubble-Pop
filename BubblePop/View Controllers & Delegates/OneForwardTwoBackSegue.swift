//
//  OneForwardTwoBackSegue.swift
//  BubblePop
//
//  Created by Peter Bower on 6/5/18.
//  Copyright © 2018 Peter Bower. All rights reserved.
//
//

/* This is a custom segue that allows the 'Back' button to move back two ViewControllers in the Navigation Controller hierarchy when selecting the 'Back' button
 For Bubble Pop, this is used to ensure that after selecting 'Play Again' post-game, the 'Back' button from the navigation panel takes the user back to the Home screen rather than back to the end of their previous game. */

import Foundation
import UIKit

class OneForwardTwoBackSegue: UIStoryboardSegue {   //overrides the default UIStoryBoardSegue class
    
    override func perform() {                       //with a custom implementation of the perform() function that delivers the above specified functionality
        if let navigationController = source.navigationController as UINavigationController? {
            var controllers = navigationController.viewControllers
            controllers.removeLast()
            controllers.append(destination)
            navigationController.setViewControllers(controllers, animated: true)
        }
    }
    
}
