//
//  FormData.swift
//  Results with autolayouts
//
//  Created by THOTA NAGARAJU on 11/21/19.
//  Copyright © 2019 THOTA NAGARAJU. All rights reserved.
//

import UIKit

class FormData: NSObject {
    
    static var shared:FormData = FormData()
    
    
    
    
    
    var name1=[String]()
    var age=[UInt8]()
    var interResults1=[String]()
    var interResults2=[String]()
    var interTotal:String?
    
    
  private  override init() {
        super.init()
    }
    
    
   
    
}
