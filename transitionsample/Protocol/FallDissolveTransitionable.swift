//
//  FallDissolveTransitionable.swift
//  transitionsample
//
//  Created by hyde on 2018/04/08.
//  Copyright © 2018年 hyde. All rights reserved.
//

import UIKit

protocol FallDissolveTransitionable {
    var animatableTansitionViews: [UIView] { get }
}

extension FallDissolveTransitionable where Self: UIViewController {
    
    var animatableTansitionViews: [UIView] {
        var onViews = view.subviews
        if let cover = onViews.enumerated().first(where: { $0.element is CoverView }) {
            onViews.remove(at: cover.offset)
            onViews.append(contentsOf: cover.element.subviews)
        }
        return onViews
    }
}
