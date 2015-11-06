//
//  LightBoxTransition.swift
//  RaptorFish
//
//  Created by Lin Wang on 11/4/15.
//  Copyright © 2015 Sean Smith. All rights reserved.
//


import UIKit

class LightBoxTransition: BaseTransition {
    
    override func presentTransition(containerView: UIView, fromViewController: UIViewController, toViewController: UIViewController) {
        
        toViewController.view.alpha = 0
        toViewController.view.transform = CGAffineTransformMakeScale(0, 0)
        UIView.animateWithDuration(duration, animations: {
            toViewController.view.alpha = 1
            toViewController.view.transform = CGAffineTransformMakeScale(1, 1)
            }) { (finished: Bool) -> Void in
                self.finish()
        }
    }
    
    override func dismissTransition(containerView: UIView, fromViewController: UIViewController, toViewController: UIViewController) {
        
        fromViewController.view.alpha = 1
        UIView.animateWithDuration(duration, animations: {
            fromViewController.view.alpha = 0
            }) { (finished: Bool) -> Void in
                self.finish()
        }
    }
}

