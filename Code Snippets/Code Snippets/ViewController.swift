//
//  ViewController.swift
//  Code Snippets
//
//  Created by 李小龙 on 2020/4/2.
//  Copyright © 2020 李小龙. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        UIColor.SSRGB_S(V: 51)
        
        self.view.subviews  
    }

    
//    var <#value#>:UIButton={
//        
//        let button = UIButton(type:.custom)
//        button.setImage(UIImage.init(named: "<#value#>"), for: .normal)
//        button.setBackgroundImage(<#value#>, for: UIControl.State.normal)
//        button.setBackgroundImage(<#value#>, for: UIControl.State.disabled)
//        button.setTitle("<#value#>", for: .normal)
//        button.setTitleColor(<#value#>, for: .normal)
//        button.titleLabel?.font = UIFont.init(name: "<#value#>", size: <#value#>)
//        button.layer.cornerRadius = <#value#>
//        button.layer.masksToBounds = true
//        
//        return button
//    }()
//    
//    
//    <#value#>.addTarget(self, action: #selector(<#value#>), for: .touchUpInside)
//    @objc func <#value#>() {
//        
//    }
    
}

//删除一个view 下的所有子view


extension UIView {
 func clearAll(){

  if self.subviews.count > 0 {

 self.subviews.forEach({ $0.removeFromSuperview()});

 // xcode7会提示 Result of call to map is unused

 //self.subviews.map { $0.removeFromSuperview()};

}

}

}
 
