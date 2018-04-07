//
//  SecondViewController.swift
//  transitionsample
//
//  Created by hyde on 2018/04/08.
//  Copyright © 2018年 hyde. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, FallDissolveTransitionable {
    
    @IBAction func backButtonTapped(_ sender: Any) {
        navigationController!.popViewController(animated: true)
    }
}
