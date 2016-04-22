//
//  ModelProtocol.swift
//  MiaoleGB
//
//  Created by tongxing on 4/22/16.
//  Copyright © 2016 UOKO. All rights reserved.
//

import Foundation

//
//
//protocol ModelDelegate{
//    var didStartLoad:ClosureVoid?{}
//    
//    var didFinishLoad:ClosureVoid?
//    
//    var didFailLoadWithError:ClourseError?
//    
//    var didCancelLoad:ClosureVoid?
//}

protocol ModelProtocol{
//    func load(param:[String:AnyObject], didFinish:ClosureVoid?, didFailed:ClourseError?)->ModelProtocol
//    func loadNext(param:[String:AnyObject], didFinish:ClosureVoid?, didFailed:ClourseError?)->ModelProtocol
    func load(param:[String:AnyObject]?)->ModelProtocol
    func finish(didFinish:ClosureVoid?)->ModelProtocol
    func error(didFailed:ClourseError?)->ModelProtocol
//    func loadSignal(param:[String:AnyObject]?)->RACSignal
}

protocol ArrayModelProtocol:ModelProtocol{
    func loadNext(param:[String:AnyObject])->ModelProtocol
}
