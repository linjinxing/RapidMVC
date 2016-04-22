//
//  ViewController.swift
//  RapidMVC
//
//  Created by linjinxing on 16/4/22.
//  Copyright © 2016年 TongXing. All rights reserved.
//

import UIKit

class objModel:NSObject{
    
}

class ViewController: UIViewController, UIViewControllerModelProtocol {
    var model:ModelProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        model = RequestModel<objModel>()
        model?.load(nil)
            .finish{
                print("ViewController finish")
            }
            .error{ (error)->Void in
                print("ViewController \(error)")
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

