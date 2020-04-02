//
//  UIColor+Extension.swift
//  Code Snippets
//
//  Created by 李小龙 on 2020/4/2.
//  Copyright © 2020 李小龙. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    
    //设置同一种颜色
    class func SSRGB_S(V:CGFloat) -> UIColor {
        
        return SSRGB(R: V, G: V, B: V)
    }
    //设置颜色（RGB：0.0~255.0） 示例：SSRGB(120, 120, 80)
    class func SSRGB(R:CGFloat, G:CGFloat, B:CGFloat) -> UIColor {
        
        return SSRGB_A(R: R, G: G, B: B, A: 1.0);
    }
    
    //设置颜色与透明度（RGB：0.0~255.0；A：0.0~1.0） 示例：SSRGB_A(80.0, 50.0, 20.0, 1)
    class func SSRGB_A(R:CGFloat, G:CGFloat, B:CGFloat, A:CGFloat) -> UIColor {
        
        let color = UIColor.init(red: (R / 255.0), green: (G / 255.0), blue: (B / 255.0), alpha: A);
        return color;
    }
    
    //设置颜色 示例：SSHex(0x26F6E8)
    class func SSHex(V:UInt32) -> UIColor {
        
        return SSHex_A(V: V, A: 1.0);
    }
    
    //设置颜色与透明度 示例：SSHex_A(0x26F6E8, 0.5)
    class func SSHex_A(V:UInt32, A:CGFloat) -> UIColor {
        
        let color = UIColor.init(red: (((CGFloat)((V & 0xFF0000) >> 16)) / 255.0),
                         green: (((CGFloat)((V & 0xFF0000) >> 16)) / 255.0),
                         blue: (((CGFloat)((V & 0xFF0000) >> 16)) / 255.0),
                         alpha: A)
        return color
    }
    
    //设置随机颜色
    class func SSRandom() -> UIColor {
        
        let color: UIColor = UIColor.init(red: (((CGFloat)((arc4random() % 256)) / 255.0)), green: (((CGFloat)((arc4random() % 256)) / 255.0)), blue: (((CGFloat)((arc4random() % 256)) / 255.0)), alpha: 1.0);
        return color;
    }
}
