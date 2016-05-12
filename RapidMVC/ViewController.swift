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

class ViewController<U:NSObject>: UIViewController, UIViewControllerModelProtocol {
    var model:RequestModel<U>?
    
//    func initModel<T:NSObject where T == U>(type:T) {
//        model = RequestModel<T>()
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        model?.get()
            .finish{
            
            }
            .error{(error) in
                
        }
//        model = RequestModel<objModel>()
//        model?.load(nil)
//            .finish{
//                print("ViewController finish")
//            }
//            .error{ (error)->Void in
//                print("ViewController \(error)")
//        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func updateViews(data:AnyObject){
        
    }
    
    func updateModel(view:UIView){
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

