//
//  CoverView.swift
//  transitionsample
//
//  Created by hyde on 2018/04/08.
//  Copyright © 2018年 hyde. All rights reserved.
//

import Foundation
import UIKit

class CoverView: UIView {
    
    var cornerRadius: CGFloat = 0.0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    override init(frame: CGRect) {
        fatalError()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        applyRadius()
    }
    
    private func applyRadius() {
        cornerRadius = 40.0
        layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    }
}
