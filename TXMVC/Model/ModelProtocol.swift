//
//  ModelProtocol.swift
//  MiaoleGB
//
//  Created by tongxing on 4/22/16.
//  Copyright © 2016 UOKO. All rights reserved.
//

import Foundation

public protocol ModelProtocol{
    associatedtype ELement:NSObject
    var data:ELement?{get}
    func get(param:[String:AnyObject]?)->Self
    func finish(didFinish:ClosureVoid?)->Self
    func error(didFailed:ClourseError?)->Self
}

//protocol ArrayModelProtocol:ModelProtocol{
//    func loadNext(param:[String:AnyObject])->ModelProtocol
//}
