//
//  AViewController.swift
//  MainProject
//
//  Created by Jonphy on 2019/11/4.
//  Copyright © 2019 Jonphy. All rights reserved.
//

import UIKit
import CTMediator
import B_Category

class AViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "A"
        self.view.backgroundColor = UIColor.white
        self.view.addSubview(self.pushBButton())
        // Do any additional setup after loading the view.
    }
    
    func pushBButton() -> UIButton {
        let btn = UIButton.init(frame: CGRect(x: 0, y: 0, width: 200, height: 30))
        btn.center = self.view.center
        btn.setTitle("pushBButton", for: UIControl.State.normal)
        btn.setTitleColor(UIColor.black, for: UIControl.State.normal)
        btn.addTarget(self, action: #selector(pushBAction), for: UIControl.Event.touchUpInside)
        return btn
    }
    
    @objc func pushBAction() -> Void {
        
        let b = CTMediator.sharedInstance()?.B_viewControllerWithContext(context: "B_Module")
        self.navigationController?.pushViewController(b!, animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
