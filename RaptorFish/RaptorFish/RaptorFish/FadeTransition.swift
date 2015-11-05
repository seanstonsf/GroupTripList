//
//  FadeTransition.swift
//  transitionDemo
//
//  Created by Timothy Lee on 11/4/14.
//  Copyright (c) 2014 Timothy Lee. All rights reserved.
//

import UIKit

class FadeTransition: BaseTransition {
    
    override func presentTransition(containerView: UIView, fromViewController: UIViewController, toViewController: UIViewController) {
        
        toViewController.view.alpha = 0
        UIView.animateWithDuration(duration, animations: {
            toViewController.view.alpha = 1
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




class Some3DTransition: BaseTransition {
    
    override func presentTransition(containerView: UIView, fromViewController: UIViewController, toViewController: UIViewController) {
        _animateTransition(self.transitionContext, reverse: false)
    }
    
    override func dismissTransition(containerView: UIView, fromViewController: UIViewController, toViewController: UIViewController) {
        _animateTransition(self.transitionContext, reverse: true)
    }
    
    
    
    private func _animateTransition(transitionContext: UIViewControllerContextTransitioning, reverse: Bool)
    {
        // http://www.appcoda.com/custom-view-controller-transitions-tutorial/
        
        let containerView = transitionContext.containerView()!
        
        let toViewController = transitionContext.viewControllerForKey(UITransitionContextToViewControllerKey)!
        let toView = toViewController.view

        let fromViewController = transitionContext.viewControllerForKey(UITransitionContextFromViewControllerKey)!
        let fromView = fromViewController.view

//        let toView: UIView! = transitionContext.viewForKey(UITransitionContextFromViewKey)
//        let fromView: UIView! = transitionContext.viewForKey(UITransitionContextToViewKey)

        
        let direction: CGFloat = reverse ? -1 : 1
        let const: CGFloat = -0.005
        
        toView.layer.anchorPoint   = CGPointMake(direction == 1 ? 0 : 1, 0.5)
        fromView.layer.anchorPoint = CGPointMake(direction == 1 ? 1 : 0, 0.5)
        
        var viewFromTransform: CATransform3D = CATransform3DMakeRotation(direction * CGFloat(M_PI_2), 0.0, 1.0, 0.0)
        var viewToTransform: CATransform3D = CATransform3DMakeRotation(-direction * CGFloat(M_PI_2), 0.0, 1.0, 0.0)
        viewFromTransform.m34 = const
        viewToTransform.m34 = const
        
        containerView.transform = CGAffineTransformMakeTranslation(direction * containerView.frame.size.width / 2.0, 0)
        toView.layer.transform = viewToTransform
        containerView.addSubview(toView)
        
//        assert(toView.superview! == containerView)
//        assert(fromView.superview! == containerView)
        
        UIView.animateWithDuration(transitionDuration(transitionContext), animations: {
            containerView.transform = CGAffineTransformMakeTranslation(-direction * containerView.frame.size.width / 2.0, 0)
            fromView.layer.transform = viewFromTransform
            toView.layer.transform = CATransform3DIdentity
            }, completion: {
                finished in
                containerView.transform = CGAffineTransformIdentity
                fromView.layer.transform = CATransform3DIdentity
                toView.layer.transform = CATransform3DIdentity
                fromView.layer.anchorPoint = CGPointMake(0.5, 0.5)
                toView.layer.anchorPoint = CGPointMake(0.5, 0.5)
                
                if (transitionContext.transitionWasCancelled()) {
                    toView.removeFromSuperview()
                } else {
                    fromView.removeFromSuperview()
                }
                transitionContext.completeTransition(!transitionContext.transitionWasCancelled())
        })        
    }
    
    
    
}
