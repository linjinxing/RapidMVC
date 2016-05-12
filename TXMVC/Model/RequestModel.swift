//
//  RequestModel.swift
//  MiaoleGB
//
//  Created by tongxing on 4/22/16.
//  Copyright © 2016 UOKO. All rights reserved.
//

import Foundation

struct RequestModel<T:NSObject>:ModelProtocol {
    typealias Element = T
    var param:[String:AnyObject]?
    func get(param:[String:AnyObject]? = nil)->RequestModel{
        print("load")
        return self
    }

    func finish(didFinish:ClosureVoid?)->RequestModel{
        print("finish")
        return self
    }
    func error(didFailed:ClourseError?)->RequestModel{
        print("error")
        return self
    }
    var data:T?
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