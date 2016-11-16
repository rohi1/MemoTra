//
//  NSObjectExtension.swift
//  MemoTra
//
//  Created by 伊藤寛晃 on 2016/11/13.
//  Copyright © 2016年 Hiroaki_Ito. All rights reserved.
//

import Foundation

extension NSObject {
    class var className: String {
        return String(describing: self)
    }
    
    var className: String {
        return type(of: self).className
    }
}
