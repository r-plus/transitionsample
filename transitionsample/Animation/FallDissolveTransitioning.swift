//
//  FallDissolveTransitioning.swift
//  transitionsample
//
//  Created by hyde on 2018/04/08.
//  Copyright © 2018年 hyde. All rights reserved.
//

import UIKit

class FallDissolveTransitioning: NSObject, UIViewControllerAnimatedTransitioning {
    
    let kDistance: CGFloat = 50.0
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 1.0
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        let fromVC = transitionContext.viewController(forKey: .from)!
        let toVC = transitionContext.viewController(forKey: .to)!
        let fromAnimatableViews = (fromVC as! FallDissolveTransitionable).animatableTansitionViews
        let toAnimatableViews = (toVC as! FallDissolveTransitionable).animatableTansitionViews
        let finalFrame = transitionContext.finalFrame(for: toVC)
        let duration = transitionDuration(using: transitionContext)
        
        // no animation, no visible
        transitionContext.containerView.addSubview(toVC.view)
        toVC.view.frame = finalFrame
        toVC.view.alpha = 0
        
        // uplift
        toAnimatableViews.forEach { (v) in
            v.transform = CGAffineTransform(translationX: 0, y: -kDistance)
        }
        
        UIView.animate(withDuration: duration, animations: {
            // visible
            toVC.view.alpha = 1.0
            
            // fall + fadeout
            fromAnimatableViews.forEach { (v) in
                v.transform = CGAffineTransform(translationX: 0, y: self.kDistance)
                v.alpha = 0
            }
            
            // fall + fadein
            toAnimatableViews.forEach { (v) in
                v.transform = CGAffineTransform.identity
                v.alpha = 1.0
            }
        }, completion: { (_) in
            transitionContext.completeTransition(true)
        })
    }
}
