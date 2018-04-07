//
//  ViewController.swift
//  transitionsample
//
//  Created by hyde on 2018/04/08.
//  Copyright © 2018年 hyde. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, FallDissolveTransitionable {

    @IBAction func buttonTapped(_ sender: Any) {
        let vc = UIStoryboard(name: "SecondViewController", bundle: Bundle.main).instantiateInitialViewController()!
        navigationController!.pushViewController(vc, animated: true)
    }
}
