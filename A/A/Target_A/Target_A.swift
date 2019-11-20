//
//  Target_A.swift
//  A
//
//  Created by Jonphy on 2019/11/5.
//  Copyright © 2019 Jonphy. All rights reserved.
//

import UIKit

@objc class Target_A: NSObject {
    
  @objc func Action_viewController(params:Dictionary<String,AnyObject>) -> UIViewController {
        let a = UIViewController.init()
        return a
    }

}
