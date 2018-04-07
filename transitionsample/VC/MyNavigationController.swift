//
//  MyNavigationController.swift
//  transitionsample
//
//  Created by hyde on 2018/04/08.
//  Copyright © 2018年 hyde. All rights reserved.
//

import UIKit

class MyNavigationController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
    }
}

extension MyNavigationController: UINavigationControllerDelegate {
    
    func navigationController(_ navigationController: UINavigationController,
                              animationControllerFor operation: UINavigationControllerOperation,
                              from fromVC: UIViewController,
                              to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning?
    {
        assert(fromVC is FallDissolveTransitionable && toVC is FallDissolveTransitionable, "Both VC are must conform to FallDissolveTransitionable protocol.")
        return FallDissolveTransitioning()
    }
}
