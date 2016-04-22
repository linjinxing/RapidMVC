//
//  RequestModel.swift
//  MiaoleGB
//
//  Created by tongxing on 4/22/16.
//  Copyright © 2016 UOKO. All rights reserved.
//

import Foundation




struct RequestModel<T>:ModelProtocol {
    var data:T?
    var param:[String:AnyObject]?
//    func load(param:[String:AnyObject], didFinish:ClosureVoid?, didFailed:ClourseError?){
//        
//    }
//    func loadNext(param:[String:AnyObject]=[:], didFinish:ClosureVoid?, didFailed:ClourseError?){
//        
//    }
    func load(param:[String:AnyObject]?)->ModelProtocol{
        print("load")
        return self
    }

    func finish(didFinish:ClosureVoid?)->ModelProtocol{
        print("finish")
        return self
    }
    func error(didFailed:ClourseError?)->ModelProtocol{
        print("error")
        return self
    }
    
    private var didFinish:ClosureVoid?
    private var didFailed:ClourseError?
}

//struct RequestArrayModel<T>:ModelProtocol {
//    var totalPage = 0
//    var currentPage = 0
//    var datas:[T]?
//    func load(param:[String:AnyObject], didFinish:ClosureVoid?, didFailed:ClourseError?){
//        
//    }
//    func loadNext(param:[String:AnyObject]=[:], didFinish:ClosureVoid?, didFailed:ClourseError?){
//        
//    }
//func loadNext(param:[String:AnyObject])->ModelProtocol{
//    print("loadNext")
//    return self
//}
//}