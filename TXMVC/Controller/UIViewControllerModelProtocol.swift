//
//  UIViewControllerModelProtocol.swift
//  RapidMVC
//
//  Created by linjinxing on 16/4/22.
//  Copyright © 2016年 TongXing. All rights reserved.
//

import Foundation
import UIKit


public protocol UIViewControllerModelProtocol:NSObjectProtocol{
    func updateViews(data:NSObject);
    func updateModel(view:UIView);
    var model:ModelProtocol?{get set}
}