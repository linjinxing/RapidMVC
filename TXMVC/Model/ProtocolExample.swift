//
//  ProtocolExample.swift
//  RapidMVC
//
//  Created by linjinxing on 16/4/24.
//  Copyright © 2016年 TongXing. All rights reserved.
//

import Foundation


protocol MythicalType {
    associatedtype FoodType
    
    func prepareFood() -> [FoodType]
    func devour(edible: FoodType)
}

//By making this class a generic class, we can define a type T that we forward to our dependency injected MythicalType.
//Since this class conforms to our MythicalType protocol, we can call MythicalType's functions regularly.

struct AnyMythicalType<T>: MythicalType {
    //These variables are private, preventing others from assigning to them or calling them directly.
    //Since each type is the exact same type as the functions in our MythicalType, we can assign a MythicalType instance's function signatures to these variables.
    //By assigning a MythicalType instance's function signatures to these variables, we can effectively forward any calls made to AnyMythicalType's functions to the original Spaceship instance.
    private let _prepareFood: (Void -> [T])
    private let _devour: (T -> Void)
    
    //By creating only one required init, we ensure that we can only initialize this class one way.
    init<U: MythicalType where U.FoodType == T>(_ mythicalCreature: U) {
        _prepareFood = mythicalCreature.prepareFood
        _devour = mythicalCreature.devour
    }
    
    //Because this forwarding class does conform to the MythicalType protocol, we can call the MythicalType functions directly on this class. This class, as you can see, will forward that message to the function signatures that we assigned at the time of initialization.
    func prepareFood() -> [T] {
        return _prepareFood()
    }
    
    //Here is the second function in the MythicalType protocol and the forwarded message.
    func devour(edible: T) {
        _devour(edible)
    }
}




protocol MyStructDelegateProtocol{
    associatedtype ValueType
    func valueDidChange(value:ValueType)
}

struct MyStruct<T:MyStructDelegateProtocol>{
    var value:T.ValueType
    var delegate:T
}

class MyClass:NSObject,MyStructDelegateProtocol{
    typealias ValueType = String
    var myStruct:MyStruct<MyClass>?
    func valueDidChange(value: ValueType) {
        //deal with delegate.
    }
    override init(){
        super.init()
    }
}



