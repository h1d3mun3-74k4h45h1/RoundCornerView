//
//  RoundCornerView.swift
//  RoundCornerView
//
//  Created by Hidemune Takahashi on 12/12/18.
//  Copyright © 2018 Hidemune Takahashi. All rights reserved.
//

public struct RoundCornerView<Base> {
    let base: Base
    init (_ base: Base) {
        self.base = base
    }
}

public protocol RoundCornerViewCompatible {
    associatedtype Compatible
    static var rcv: RoundCornerView<Compatible>.Type { get }
    var rcv: RoundCornerView<Compatible> { get }
}

public extension RoundCornerViewCompatible {
    static var rcv: RoundCornerView<Self>.Type {
        return RoundCornerView<Self>.self
    }
    
    var rcv: RoundCornerView<Self> {
        return RoundCornerView(self)
    }
}
